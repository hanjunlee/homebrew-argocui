class Argocui < Formula
  desc "Managing Argo resource by CUI."
  homepage "https://github.com/hanjunlee/argocui"
  version "0.0.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/hanjunlee/argocui/releases/download/v0.0.2/argocui_darwin_amd64.tar.gz"
    sha256 "d118717b3026dd557882cb5d4baa465678e67dc8940fc6dc9652a3011626ad5a"
  elsif OS.linux?
    url "https://github.com/hanjunlee/argocui/releases/download/v0.0.2/argocui_linux_amd64.tar.gz"
    sha256 "960537e93e7700e1d6fbe50907d0fba9b93ebffb4c0dc7b2f99d6df4be59a6de"
  end

  def install
    bin.install "argocui"
  end

  test do
    system "argocui -h"
  end
end
  