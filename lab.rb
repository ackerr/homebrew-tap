# This file was generated by GoReleaser. DO NOT EDIT.
class Lab < Formula
  desc "A cli tool with gitlab."
  homepage "https://github.com/Ackerr/lab"
  version "0.2.8"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/Ackerr/lab/releases/download/v0.2.8/lab_Darwin_x86_64.tar.gz"
    sha256 "86102aeb7f5ae821f937c1d577c72a4e404c99c945331f4889e4f58c126eb932"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Ackerr/lab/releases/download/v0.2.8/lab_Linux_x86_64.tar.gz"
      sha256 "5077bb67a7159e922a966842166e929e62c4eab7ab02e783f79a2e042e48fa11"
    end
  end

  def install
    bin.install "lab"
  end

  test do
    system "#{bin}/lab -v"
  end
end
