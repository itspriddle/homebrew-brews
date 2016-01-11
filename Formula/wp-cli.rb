require "formula"

class WpCli < Formula
  homepage "http://wp-cli.org/"
  version  "0.22.0"
  url      "https://github.com/wp-cli/wp-cli/releases/download/v#{version}/wp-cli-#{version}.phar"
  sha256   "9ad3d193c19771b13696ed8e6a5e59d2fd3acc12464ec119aae9238b8aca7274"
  head     "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli-nightly.phar"

  def install
    bin.install "wp-cli-#{build.head? ? "nightly" : version}.phar" => "wp"
  end
end
