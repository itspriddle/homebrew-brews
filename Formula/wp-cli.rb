class WpCli < Formula
  homepage "http://wp-cli.org/"
  version  "1.4.0"
  url      "https://github.com/wp-cli/wp-cli/releases/download/v#{version}/wp-cli-#{version}.phar"
  sha256   "125f1edcf02e4a5dec0fdb5bdbde32e1b9a5415831d8d8157f0175fb8d2a5b65"
  head     "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli-nightly.phar"

  def install
    bin.install "wp-cli-#{build.head? ? "nightly" : version}.phar" => "wp"
  end
end
