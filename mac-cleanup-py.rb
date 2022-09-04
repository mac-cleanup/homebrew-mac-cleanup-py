class MacCleanupPy < Formula
  include Language::Python::Virtualenv
  
  desc "Python cleanup script for macOS"
  homepage "https://github.com/mac-cleanup/mac-cleanup-py"
  url "https://github.com/mac-cleanup/mac-cleanup-py/archive/refs/tags/v2.2.4.tar.gz"
  sha256 "418d18555002331703a2bb191498a540db704dfa207860237e666190203a914e"
  license "Apache-2.0"

  depends_on "python3"

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/1a/cb/c4ffeb41e7137b23755a45e1bfec9cbb76ecf51874c6f1d113984ecaa32c/attrs-22.1.0.tar.gz"
    sha256 "29adc2665447e5191d0e7c568fde78b21f9672d344281d0c6e1ab085429b22b6"
  end

  resource "blessed" do
    url "https://files.pythonhosted.org/packages/e5/ad/97453480e7bdfce94f05a983cf7ad7f1d90239efee53d5af28e622f0367f/blessed-1.19.1.tar.gz"
    sha256 "9a0d099695bf621d4680dd6c73f6ad547f6a3442fbdbe80c4b1daa1edbc492fc"
  end

  resource "commonmark" do
    url "https://files.pythonhosted.org/packages/60/48/a60f593447e8f0894ebb7f6e6c1f25dafc5e89c5879fdc9360ae93ff83f0/commonmark-0.9.1.tar.gz"
    sha256 "452f9dc859be7f06631ddcb328b6919c67984aca654e5fefb3914d54691aed60"
  end

  resource "inquirer" do
    url "https://files.pythonhosted.org/packages/e5/e3/cd77784d0cca9ab8b5be5a6cd4f72ffec407486207ce4f6edec3fc4b8ece/inquirer-2.10.0.tar.gz"
    sha256 "d6bef9df4d0049fb93ed4e1c1df852e48287331d21e46ed6163b8b2290fc5cb5"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/e0/ef/5905cd3642f2337d44143529c941cc3a02e5af16f0f65f81cbef7af452bb/Pygments-2.13.0.tar.gz"
    sha256 "56a8508ae95f98e2b9bdf93a6be5ae3f7d8af858b43e02c5a2ff083726be40c1"
  end

  resource "python-editor" do
    url "https://files.pythonhosted.org/packages/0a/85/78f4a216d28343a67b7397c99825cff336330893f00601443f7c7b2f2234/python-editor-1.0.4.tar.gz"
    sha256 "51fda6bcc5ddbbb7063b2af7509e43bd84bfc32a4ff71349ec7847713882327b"
  end

  resource "readchar" do
    url "https://files.pythonhosted.org/packages/0d/d0/b2e51526b0e5119bda179de13827302d1b67d433cf3893fa713945316fff/readchar-4.0.2.tar.gz"
    sha256 "ddfc13ffb36cac89e5e9f40b7527e268c905b6d7e1b6201424721a7455ef077c"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/bb/2d/c902484141330ded63c6c40d66a9725f8da5e818770f67241cf429eef825/rich-12.5.1.tar.gz"
    sha256 "63a5c5ce3673d3d5fbbf23cd87e11ab84b6b451436f1b7f19ec54b6bc36ed7ca"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "toml" do
    url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
    sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/89/38/459b727c381504f361832b9e5ace19966de1a235d73cdbdea91c771a1155/wcwidth-0.2.5.tar.gz"
    sha256 "c4d647b99872929fdb7bdcaa4fbe7f01413ed3d98077df798530e5b04f116c83"
  end

  resource "wheel" do
    url "https://files.pythonhosted.org/packages/c0/6c/9f840c2e55b67b90745af06a540964b73589256cb10cc10057c87ac78fc2/wheel-0.37.1.tar.gz"
    sha256 "e9a504e793efbca1b8e0e9cb979a249cf4a0a7b5b8c9e8b65a5e39d49529c1c4"
  end

  def install
	virtualenv_install_with_resources
  end
  
  test do
    system "mac-cleanup", "--help"
  end

end
