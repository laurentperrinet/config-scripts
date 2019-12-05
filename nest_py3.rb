class NestPy3 < Formula
  desc "The Neural Simulation Tool (NEST) with Python3 bindings (PyNEST)"
  homepage "http://www.nest-simulator.org/"
  url "https://github.com/nest/nest-simulator/archive/v2.18.0.tar.gz"
  sha256 "7295c936fbdd5486395b06f54f0d4d35d9a1b6ee50b7b844186ec2c92de641d1"
  revision 1
  head "https://github.com/nest/nest-simulator.git"

  # option "with-python3", "Build Python3 bindings (PyNEST) instead of Python2 bindings."
  option "without-openmp", "Build without OpenMP support."
  deprecated_option "with-mpi" => "with-open-mpi"

  needs :openmp if build.with? "openmp"

  depends_on "gsl" => :recommended
  depends_on "open-mpi" => :optional

  # # Any Python >= 2.7 < 3.x is okay (either from macOS or brewed)
  # depends_on "python3" => :optional
  #
  # requires_py3 = []
  # requires_py3 << "with-python3" if build.with? "python3"
#   depends_on "numpy" => requires_py3
#   depends_on "scipy" => requires_py3
#   depends_on "matplotlib" => requires_py3

  depends_on "libtool"
  depends_on "readline"
  depends_on "cmake" => :build

#   resource "Cython" do
#     url "https://files.pythonhosted.org/packages/ee/2a/c4d2cdd19c84c32d978d18e9355d1ba9982a383de87d0fcb5928553d37f4/Cython-0.27.3.tar.gz"
#     sha256 "6a00512de1f2e3ce66ba35c5420babaef1fe2d9c43a8faab4080b0dbcc26bc64"
#   end
# 
#   resource "nose" do
#     url "https://files.pythonhosted.org/packages/58/a5/0dc93c3ec33f4e281849523a5a913fa1eea9a3068acfa754d44d88107a44/nose-1.3.7.tar.gz"
#     sha256 "f1bffef9cbc82628f6e7d7b40d7e255aefaa1adb6a1b1d26c69a8b79e6208a98"
#   end
# 
#   fails_with :clang do
#     cause <<~EOS
#       Building NEST with clang is not stable. See https://github.com/nest/nest-simulator/issues/74 .
#     EOS
#   end

  def install
    ENV.delete("CFLAGS")
    ENV.delete("CXXFLAGS")
    # The Homebrew site-packages path is automatically added to the PYTHONPATH
    # env var in Library/Homebrew/requirements/python_requirement.rb. However,
    # it is getting confused as to which version of Python we are using and
    # putting the wrong site-packages on the path (2 instead of 3). Since we
    # don't need any Homebrew-installed bindings it is easiest/safe just to
    # delete it.
    ENV.delete("PYTHONPATH")

    ENV.prepend_create_path "PATH", "/usr/local/bin"
    ENV.prepend_create_path "PATH", "/usr/bin"
    py3_config = `python3-config --configdir`.chomp
    py3_include = `python3 -c "import distutils.sysconfig as s; print(s.get_python_inc())"`.chomp
	python_exec = "python3"
    python_version = Language::Python.major_minor_version(python_exec)

	args = std_cmake_args
    args << "-DCMAKE_INSTALL_PREFIX:PATH=#{prefix}"

    args << "-Dwith-mpi=ON" if build.with? "open-mpi"
    args << "-Dwith-openmp=OFF" if build.without? "openmp"
    args << "-Dwith-gsl=OFF" if build.without? "gsl"

	args << "-Dwith-python=3"
	args << "-DPYTHON3_EXECUTABLE=#{which "python3"}"
	args << "-DPYTHON3_LIBRARY=#{py3_config}/libpython#{python_version}.dylib"
	args << "-DPYTHON3_INCLUDE_DIR=#{py3_include}"


#     resource("nose").stage do
#       system python_exec, *Language::Python.setup_install_args(libexec/"nose")
#       # only nose executable is interesting during testing - not adding a *.pth file
#     end
# 
#     resource("Cython").stage do
#       system python_exec, *Language::Python.setup_install_args(buildpath/"cython")
#     end

#     # Add local build resource Cython residing in buildpath to paths
#     ENV.prepend_create_path "PATH", buildpath/"cython/bin"
#     ENV.prepend_create_path "PYTHONPATH", buildpath/"cython/lib/python#{python_version}/site-packages"

    # "out of source" build
    mkdir "build" do
      system "cmake", "..", *args
      system "make -j8"
      system "make", "install"
    end

    # Replace internally accessible gcc with externally accesible version
    # in nest-config if required
    inreplace bin/"nest-config",
        %r{#{HOMEBREW_REPOSITORY}/Library/Homebrew/shims.*/super},
        "#{HOMEBREW_PREFIX}/bin",
        FALSE
  end

  test do
    # simple check whether NEST was compiled & linked
    system bin/"nest", "--version"

    # necessary for the python tests
    ENV["exec_prefix"] = prefix
    # if build.head? does not seem to work
    if !File.directory?(pkgshare/"sources")
      # Skip tests for correct copyright headers
      ENV["NEST_SOURCE"] = "SKIP"
    else
      # necessary for one regression on the sources
      ENV["NEST_SOURCE"] = pkgshare/"sources"
    end

    if build.with? "open-mpi"
      # we need the command /mpirun defined for the mpi tests
      # and since we are in the sandbox, we create it again
      nestrc = <<-EOS
        /mpirun
        [/integertype /stringtype /stringtype]
        [/numproc     /executable /scriptfile]
        {
         () [
          (mpirun -np ) numproc cvs ( ) executable ( ) scriptfile
         ] {join} Fold
        } Function def
      EOS
      File.open(ENV["HOME"]+"/.nestrc", "w") { |file| file.write(nestrc) }
    end

    # add nosetest executable to path
    ENV.prepend_create_path "PATH", libexec/"nose/bin"
    # run all tests
    args = ["--test-pynest"]

    ENV["PYTHON"] = "python3" if build.with? "python3"

    system pkgshare/"extras/do_tests.sh", *args
  end
end
