class Bashword < Formula
  version "0.2.0"

  homepage "https://github.com/itspriddle/bashword"
  url      "https://github.com/itspriddle/bashword/archive/v#{version}.tar.gz"
  sha256   "19d8eb0678a30b30e7438fc535d7c7d8cc6b96822479194641be5fb45825cb68"

  head "https://github.com/itspriddle/bashword.git"

  def install
    bin.install "bin/bashword"
    man1.install "share/man/man1/bashword.1"
  end
end
