# This file was generated by GoReleaser. DO NOT EDIT.
class Lab < Formula
  desc "A cli tool with gitlab."
  homepage "https://github.com/Ackerr/lab"
  version "0.0.9"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/Ackerr/lab/releases/download/v0.0.9/lab_Darwin_x86_64.tar.gz"
    sha256 "33f5a666056092784cb1153824bff38ccc5a5c7221a2ae1a8a2f60170d8f5eb5"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Ackerr/lab/releases/download/v0.0.9/lab_Linux_x86_64.tar.gz"
      sha256 "40419b90285682a1f472893698738bb57cdfb5d2156124b011ebad7cdf9fbb21"
    end
  end

  def install
    bin.install "lab"
  end

  test do
    system "#{bin}/lab -v"
  end
end
