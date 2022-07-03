class MacCleanupPy < Formula
  desc "Python cleanup script for macOS"
  homepage "https://github.com/Drugsosos/mac-cleanup-py"
  url "https://github.com/Drugsosos/mac-cleanup-py/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "11a43db022a04ef73f19ce9f43cf07b38210a29344185b4c566b7e39cb0e167a"
  license "Apache-2.0"

  depends_on "python3"

  def install
  	bin.install 'mac-cleanup'
  end
end
