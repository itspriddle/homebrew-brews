class WpCli < Formula
  homepage "http://wp-cli.org/"
  version  "1.4.1"
  url      "https://github.com/wp-cli/wp-cli/releases/download/v#{version}/wp-cli-#{version}.phar"
  sha256   "325924cf161856f9478f2a154572698ecb5d1054e620843b9c43a7baf4e5ce3b"
  head     "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli-nightly.phar"

  def install
    bin.install "wp-cli-#{build.head? ? "nightly" : version}.phar" => "wp"
  end
end
