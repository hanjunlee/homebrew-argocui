class Argocui < Formula
  desc "Managing Argo resource by CUI."
  homepage "https://github.com/hanjunlee/argocui"
  version "0.0.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/hanjunlee/argocui/releases/download/v0.0.3/argocui_darwin_amd64.tar.gz"
    sha256 "c9e95dfc8b4f3811a1dd715b02e89f6596a4b3f8b80c41fef3e0bae56c7c5f19"
  elsif OS.linux?
    url "https://github.com/hanjunlee/argocui/releases/download/v0.0.3/argocui_linux_amd64.tar.gz"
    sha256 "e176b9bd70c224179b283e075ba0a1b0a82ad15d9dd1976228882e87f7545a54"
  end

  def install
    bin.install "argocui"
  end

  test do
    system "argocui -version"
  end
end
  