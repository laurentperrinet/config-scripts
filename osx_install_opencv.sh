brew uninstall tbb
brew uninstall opencv
brew uninstall --ignore-dependencies python@2
brew uninstall --ignore-dependencies tbb
brew uninstall --ignore-dependencies opencv

brew install tbb_py3.rb
brew install -vd opencv_py3.rb
