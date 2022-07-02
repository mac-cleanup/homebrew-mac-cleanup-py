class MacCleanupPy < Formula
  desc "Python cleanup script for macOS"
  homepage "https://github.com/Drugsosos/mac-cleanup-py"
  url "https://github.com/Drugsosos/mac-cleanup-py/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "a72248df49dc7e2f590ac8f7696e292869da68d7f4e193480aff6010cef446b5"
  license "Apache-2.0"

  depends_on "python3"

  def install
  	bin.install 'mac-cleanup'
  end
end
