class MacCleanupPy < Formula
  desc "Python cleanup script for macOS"
  homepage "https://github.com/mac-cleanup/mac-cleanup-py"
  url "https://github.com/mac-cleanup/mac-cleanup-py/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "12372f543e9940849741c34f3b9bb3c9c2eb253ae57894a60e29656f48d35c4c"
  license "Apache-2.0"

  depends_on "python3"

  def install
  	bin.install 'mac-cleanup'
  end
end
