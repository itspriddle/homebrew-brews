class ThingsCli < Formula
  # version "HEAD"

  homepage "https://github.com/itspriddle/things-cli"
  head     "https://github.com/itspriddle/things-cli.git"
  # url      "https://github.com/itspriddle/things-cli/archive/v#{version}.tar.gz"
  # sha256   "FIXME"

  def install
    bin.install "bin/things"
    man1.install "share/man/man1/things.1"
  end
end
