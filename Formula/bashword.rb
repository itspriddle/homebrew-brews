class Bashword < Formula
  version "0.1.0"

  homepage "https://github.com/itspriddle/bashword"
  url      "https://github.com/itspriddle/bashword/archive/v#{version}.tar.gz"
  sha256   "0161a903bf1d4e9dd9dccaa53f525d0f2287546a02ad6e0d9d6689f5bea0331d"

  head "https://github.com/itspriddle/bashword.git"

  def install
    bin.install "bin/bashword"
    man1.install "share/man/man1/bashword.1"
  end
end
