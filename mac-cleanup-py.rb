class MacCleanupPy < Formula
  include Language::Python::Virtualenv
  
  desc "Python cleanup script for macOS"
  homepage "https://github.com/mac-cleanup/mac-cleanup-py"
  url "https://github.com/mac-cleanup/mac-cleanup-py/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "a05eb8fa45c7ad2064adf722a8406fb845d015a601831d13a67c0fb1e620a26c"
  license "Apache-2.0"

  depends_on "python3"
  depends_on "poetry" => :build

  resource "ansicon" do
    url "https://github.com/Rockhopper-Technologies/ansicon/archive/refs/tags/1.89.0.tar.gz"
    sha256 "4cec03b8b00c5911b35692f62fea8abc247c3fa384dea776c11fb87c23e6b286"
  end
  
  resource "blessed" do
    url "https://github.com/jquast/blessed/archive/refs/tags/1.19.1.tar.gz"
    sha256 "69d5bdd7f14ab1982c9a4b51b27ea4620625bc7d59bf96faaa4206bf5ccf3095"
  end
  
  resource "commonmark" do
    url "https://github.com/readthedocs/commonmark.py/archive/refs/tags/0.9.1.tar.gz"
    sha256 "b5d5be6af35a183c3f915d714b31b61e6918894051114419f9ac0bbb715bf4c6"
  end
  
  resource "inquirer" do
    url "https://github.com/magmax/python-inquirer/archive/refs/tags/v2.10.0.tar.gz"
    sha256 "d30b09e260640deabb52c0d6a7c14efd9a50494301b30f19d16a706945983edd"
  end
  
  resource "jinxed" do
    url "https://github.com/Rockhopper-Technologies/jinxed/archive/refs/tags/1.2.0.tar.gz"
    sha256 "343880f50de9374aaf764557a27c214413c153f4281080afb2279eb11871e2f3"
  end
  
  resource "pygments" do
    url "https://github.com/pygments/pygments/archive/refs/tags/2.12.0.tar.gz"
    sha256 "e2bcc95937b255727aa3918802ccbd8a255c73e598ffd640905e47b35b4e1f66"
  end
  
  resource "python-editor" do
    url "https://github.com/fmoo/python-editor/archive/refs/tags/1.0.4.tar.gz"
    sha256 "61a4758919668b8ffe5eb389a86a4c2e8c2f789c02b9c6aee0ddf3c4ebfe3fd3"
  end
  
  resource "readchar" do
    url "https://github.com/magmax/python-readchar/archive/refs/tags/v3.1.0.tar.gz"
    sha256 "3b517e754f49421439cd1ae8fa31f9304d6c19603af47339b1b15a7ff25331f6"
  end
  
  resource "rich" do
    url "https://github.com/Textualize/rich/archive/refs/tags/v12.5.1.tar.gz"
    sha256 "d20b194e103a0fc468c952d7dd2c84886e24bdbaeeb16c105c2eafd5f8ebaf6b"
  end
  
  resource "six" do
    url "https://github.com/benjaminp/six/archive/refs/tags/1.16.0.tar.gz"
    sha256 "af6745f78dceb1ad5107dc6c2d3646c8cb57cf4668ba7b5427145a71a690f60e"
  end
  
  resource "toml" do
    url "https://github.com/uiri/toml/archive/refs/tags/0.10.2.tar.gz"
    sha256 "71d4039bbdec91e3e7591ec5d6c943c58f9a2d17e5f6783acdc378f743fcdd2a"
  end
  
  resource "typing-extensions" do
    url "https://github.com/python/typing_extensions/archive/refs/tags/4.3.0.tar.gz"
    sha256 "9dbc928aed2839a23d210726697700a1c4593ab3bbf82b981fcc44585a47ce30"
  end
  
  resource "wcwidth" do
    url "https://github.com/jquast/wcwidth/archive/refs/tags/0.2.5.tar.gz"
    sha256 "b08fa4c7d7be1ba86950c2d746eb0d19de80842ab7457df5b3fcd3bf52e02b08"
  end
  
  def install
	virtualenv_install_with_resources
  end
  
  test do
    system "mac-cleanup", "--help"
  end

end
