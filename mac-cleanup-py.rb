class MacCleanupPy < Formula
  include Language::Python::Virtualenv

  desc "Python cleanup script for macOS"
  homepage "https://github.com/mac-cleanup/mac-cleanup-py"
  url "https://github.com/mac-cleanup/mac-cleanup-py/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "4fefa23c252e36399e858ff0d5f0933e1c66c27acdd6535c85ba54cf49d093fa"
  license "Apache-2.0"

  depends_on "python3"

  resource "rich" do
    url "https://pypi.python.org/packages/source/s/rich/rich-12.5.1.tar.gz"
    sha256 "63a5c5ce3673d3d5fbbf23cd87e11ab84b6b451436f1b7f19ec54b6bc36ed7ca"
  end

  def install
  	virtualenv_install_with_resources
  end
end
