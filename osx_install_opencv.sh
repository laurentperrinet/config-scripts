 brew uninstall tbb
 brew uninstall opencv
 brew uninstall --ignore-dependencies python@2
brew uninstall --ignore-dependencies tbb
brew uninstall --ignore-dependencies opencv

 brew install -v tbb_py3.rb
 brew test tbb_py3.rb
 brew install -v opencv_py3.rb
 brew test opencv_py3.rb
