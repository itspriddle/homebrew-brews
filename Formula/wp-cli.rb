class WpCli < Formula
  homepage "http://wp-cli.org/"
  version  "0.24.0"
  url      "https://github.com/wp-cli/wp-cli/releases/download/v#{version}/wp-cli-#{version}.phar"
  sha256   "d067067cb2d449074b1573e56a5f7b58ff7bf198693bdcbf120bb1b95285a6df"
  head     "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli-nightly.phar"

  def install
    bin.install "wp-cli-#{build.head? ? "nightly" : version}.phar" => "wp"
  end
end
