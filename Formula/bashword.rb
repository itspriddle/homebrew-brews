class Bashword < Formula
  version "0.3.1"

  homepage "https://github.com/itspriddle/bashword"
  url      "https://github.com/itspriddle/bashword/archive/v#{version}.tar.gz"
  sha256   "c088e8e811add97ffcc593e697152cf4a2338ee2a9388c00cad011f5e58112e0"

  head "https://github.com/itspriddle/bashword.git"

  def install
    bin.install "bin/bashword"
    man1.install "share/man/man1/bashword.1"
  end
end
