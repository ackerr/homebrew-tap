# This file was generated by GoReleaser. DO NOT EDIT.
class Lab < Formula
  desc "A cli tool with gitlab."
  homepage "https://github.com/Ackerr/lab"
  version "0.2.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/Ackerr/lab/releases/download/v0.2.5/lab_Darwin_x86_64.tar.gz"
    sha256 "78119d253dd23ba029e4d8ee667f793f05c48737d03328f7f1b2a0a26b5e24c8"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Ackerr/lab/releases/download/v0.2.5/lab_Linux_x86_64.tar.gz"
      sha256 "20a2978fd081fd6ce1bb96f7c16ec4b59c113ab032fa6277c3f2e850eb698f66"
    end
  end

  def install
    bin.install "lab"
  end

  test do
    system "#{bin}/lab -v"
  end
end
