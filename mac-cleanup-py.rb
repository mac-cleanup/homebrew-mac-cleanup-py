class MacCleanupPy < Formula
  desc "Python cleanup script for macOS"
  homepage "https://github.com/mac-cleanup/mac-cleanup-py"
  url "https://github.com/mac-cleanup/mac-cleanup-py/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "38f6b3d8c69adcfd2644fe8306e48dfc39e1df84b285175e98d01241399d51f2"
  license "Apache-2.0"

  depends_on "python3"

  def install
  	bin.install 'mac-cleanup'
  end
end
