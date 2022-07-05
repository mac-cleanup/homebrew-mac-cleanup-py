class MacCleanupPy < Formula
  desc "Python cleanup script for macOS"
  homepage "https://github.com/Drugsosos/mac-cleanup-py"
  url "https://github.com/Drugsosos/mac-cleanup-py/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "f106735e48d51e6d310889eb0c442323be8c4d9acf2c5b1e50ed9c7a5fd66910"
  license "Apache-2.0"

  depends_on "python3"

  def install
  	bin.install 'mac-cleanup'
  end
end
