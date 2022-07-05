class MacCleanupPy < Formula
  desc "Python cleanup script for macOS"
  homepage "https://github.com/Drugsosos/mac-cleanup-py"
  url "https://github.com/Drugsosos/mac-cleanup-py/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "7ed377551aef3db598dd503f1b6b1b0a4f367d1d3931a1c8d43f485d5746b01d"
  license "Apache-2.0"

  depends_on "python3"

  def install
  	bin.install 'mac-cleanup'
  end
end
