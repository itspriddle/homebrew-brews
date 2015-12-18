require "formula"

class WpCli < Formula
  homepage "http://wp-cli.org/"
  version  "0.21.1"
  url      "https://github.com/wp-cli/wp-cli/releases/download/v#{version}/wp-cli-#{version}.phar"
  sha256   "acd8a1f90610c9174158366f1c9016fe1d0f596311ca53e4d0c4d1c497c15f6a"
  head     "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli-nightly.phar"

  def install
    bin.install "wp-cli-#{build.head? ? "nightly" : version}.phar" => "wp"
  end
end
