class Argocui < Formula
  desc "Managing Argo resource by CUI."
  homepage "https://github.com/hanjunlee/argocui"
  version "0.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/hanjunlee/argocui/releases/download/v0.0.1/argocui_darwin_amd64.tar.gz"
    sha256 "70680e1b6aabb4149f33ac47fec526ab7e1b809e3bb60ccdc90218f30da3f96e"
  elsif OS.linux?
    url "https://github.com/hanjunlee/argocui/releases/download/v0.0.1/argocui_linux_amd64.tar.gz"
    sha256 "cbff6d57e81265b9063696b7393b71e78c29e6195228be722358b379ba7c887f"
  end

  def install
    bin.install "argocui"
  end

  test do
    system "argocui -h"
  end
end
  