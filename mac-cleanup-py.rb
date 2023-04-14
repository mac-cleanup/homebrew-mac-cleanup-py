class MacCleanupPy < Formula
  include Language::Python::Virtualenv
  
  desc "Python cleanup script for macOS"
  homepage "https://github.com/mac-cleanup/mac-cleanup-py"
  url "https://github.com/mac-cleanup/mac-cleanup-py/archive/refs/tags/v3.0.0.tar.gz"
  sha256 "981c9c1589fc01c512b8d52d77f62ad77e40d2341f5863b97e4f2f3933782720"
  license "Apache-2.0"

  depends_on "python@3.10"

  
  resource "attrs" do
    url "https://files.pythonhosted.org/packages/21/31/3f468da74c7de4fcf9b25591e682856389b3400b4b62f201e65f15ea3e07/attrs-22.2.0.tar.gz"
    sha256 "c9227bfc2f01993c03f68db37d1d15c9690188323c067c641f1a35ca58185f99"
  end

  resource "beartype" do
    url "https://files.pythonhosted.org/packages/ec/91/067ba8e805db88b8260308609959b5e124f01cebdb5346f147887a78dca0/beartype-0.13.1.tar.gz"
    sha256 "2903947a8a1eb6030264e30108aa72cb1a805cfc9050c0f4014c4aed3a17a00b"
  end

  resource "blessed" do
    url "https://files.pythonhosted.org/packages/25/ae/92e9968ad23205389ec6bd82e2d4fca3817f1cdef34e10aa8d529ef8b1d7/blessed-1.20.0.tar.gz"
    sha256 "2cdd67f8746e048f00df47a2880f4d6acbcdb399031b604e34ba8f71d5787680"
  end

  resource "inquirer" do
    url "https://files.pythonhosted.org/packages/1b/e3/e2998fad3add25dc7dad7decb8dcd92e71888d7e9514c647d0a461a7381c/inquirer-3.1.3.tar.gz"
    sha256 "aac309406f5b49d4b8ab7c6872117f43bf082a552dc256aa16bc95e16bb58bec"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/e4/c0/59bd6d0571986f72899288a95d9d6178d0eebd70b6650f1bb3f0da90f8f7/markdown-it-py-2.2.0.tar.gz"
    sha256 "7c9a5e412688bc771c67432cbfebcdd686c93ce6484913dccf06cb5a0bea35a1"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/03/98/c7468f5a1b434cb15b1d240c5f3bd015962af8a822e89e7f10ee11e68928/Pygments-2.15.0.tar.gz"
    sha256 "f7e36cffc4c517fbc252861b9a6e4644ca0e5abadf9a113c72d1358ad09b9500"
  end

  resource "python-editor" do
    url "https://files.pythonhosted.org/packages/0a/85/78f4a216d28343a67b7397c99825cff336330893f00601443f7c7b2f2234/python-editor-1.0.4.tar.gz"
    sha256 "51fda6bcc5ddbbb7063b2af7509e43bd84bfc32a4ff71349ec7847713882327b"
  end

  resource "readchar" do
    url "https://files.pythonhosted.org/packages/a1/57/439aaa28659e66265518232bf4291ae5568aa01cd9e0e0f6f8fe3b300e9e/readchar-4.0.5.tar.gz"
    sha256 "08a456c2d7c1888cde3f4688b542621b676eb38cd6cfed7eb6cb2e2905ddc826"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/31/3b/2360352760b436f822258396e66ffb6d42585518a9cde2f93f142e64c5eb/rich-13.3.4.tar.gz"
    sha256 "b5d573e13605423ec80bdd0cd5f8541f7844a0e71a13f74cf454ccb2f490708b"
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
    url "https://files.pythonhosted.org/packages/5e/5f/1e4bd82a9cc1f17b2c2361a2d876d4c38973a997003ba5eb400e8a932b6c/wcwidth-0.2.6.tar.gz"
    sha256 "a5220780a404dbe3353789870978e472cfe477761f06ee55077256e509b156d0"
  end

  def install
	virtualenv_install_with_resources
  end
  
  test do
    system "mac-cleanup", "--help"
  end

end
