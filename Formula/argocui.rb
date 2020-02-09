class Argocui < Formula
  desc "Managing Argo resource by CUI."
  homepage "https://github.com/hanjunlee/argocui"
  version "0.0.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/hanjunlee/argocui/releases/download/v0.0.3/argocui_darwin_amd64.tar.gz"
    sha256 "f665a96c6deb6200ed3afe1aaf7f0e2710701cbc5a184619eb109875b4033303"
  elsif OS.linux?
    url "https://github.com/hanjunlee/argocui/releases/download/v0.0.3/argocui_linux_amd64.tar.gz"
    sha256 "306ebac236a99d446973fdbb16755082bc3e8a482c0ee6af6ac8c4d40258ffc7"
  end

  def install
    bin.install "argocui"
  end

  test do
    system "argocui -version"
  end
end
  