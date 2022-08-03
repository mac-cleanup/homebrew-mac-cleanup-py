class MacCleanupPy < Formula
  include Language::Python::Virtualenv
  
  desc "Python cleanup script for macOS"
  homepage "https://github.com/mac-cleanup/mac-cleanup-py"
  url "https://github.com/mac-cleanup/mac-cleanup-py/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "9628b35b1624a60b2eda368f13061e33e70f584597d851dd82d8cc91b48e5108"
  license "Apache-2.0"

  depends_on "python3"
  depends_on "poetry"

  resource "rich" do
    url "https://github.com/Textualize/rich/archive/refs/tags/v12.5.1.tar.gz"
    sha256 "d20b194e103a0fc468c952d7dd2c84886e24bdbaeeb16c105c2eafd5f8ebaf6b"
  end
  
  def install
	virtualenv_install_with_resources
  end
  
  test do
    system "mac-cleanup", "--help"
  end

end
