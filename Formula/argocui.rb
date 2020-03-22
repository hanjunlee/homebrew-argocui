class Argocui < Formula
  desc "Managing Argo resource by CUI."
  homepage "https://github.com/hanjunlee/argocui"
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/hanjunlee/argocui/releases/download/v0.1.0/argocui_darwin_amd64.tar.gz"
    sha256 "3516fef430506db09610b5de7a2cb814e89d29bca9d5d0895f69094913e1de48"
  elsif OS.linux?
    url "https://github.com/hanjunlee/argocui/releases/download/v0.1.0/argocui_linux_amd64.tar.gz"
    sha256 "8498a2977bf39973f353d01a2d86c4f4670663e237e5b816ebe49378fd4ece9b"
  end

  def install
    bin.install "argocui"
  end

  test do
    system "argocui -version"
  end
end
  