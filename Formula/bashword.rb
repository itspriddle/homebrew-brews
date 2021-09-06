class Bashword < Formula
  version "0.2.0"

  homepage "https://github.com/itspriddle/bashword"
  url      "https://github.com/itspriddle/bashword/archive/v#{version}.tar.gz"
  sha256   "111fdcfe1fe0450003ce84bc0014d5b849c8e6524abc59c98941cedf6c202452"

  head "https://github.com/itspriddle/bashword.git"

  def install
    bin.install "bin/bashword"
    man1.install "share/man/man1/bashword.1"
  end
end
