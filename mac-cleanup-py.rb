class MacCleanupPy < Formula
  desc "Python cleanup script for macOS"
  homepage "https://github.com/mac-cleanup/mac-cleanup-py"
  url "https://github.com/mac-cleanup/mac-cleanup-py/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "18d84f8fb178fd5f74b08059a25978ba5e40c09934bc6ed03359075b835887fc"
  license "Apache-2.0"

  depends_on "python3"

  def install
  	bin.install 'mac-cleanup'
  end
end
