class Argocui < Formula
  desc "Managing Argo resource by CUI."
  homepage "https://github.com/hanjunlee/argocui"
  version "0.0.1-beta"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/hanjunlee/argocui/releases/download/0.0.1-beta/argocui_darwin_amd64.tar.gz"
    sha256 "d3aba0dbd62437b0ce38a14d0aec197da6272adbb98f0a2fdc48be75f3f15308"
  elsif OS.linux?
    url "https://github.com/hanjunlee/argocui/releases/download/0.0.1-beta/argocui_linux_amd64.tar.gz"
    sha256 "f4f537304a0f19bd3725bd4ae6b19af3cb879caa2f223e372df8bdef0c287725"
  end

  def install
    bin.install "argocui"
  end

  test do
    system "argocui -h"
  end
end
  