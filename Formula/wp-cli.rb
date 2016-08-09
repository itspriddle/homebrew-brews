class WpCli < Formula
  homepage "http://wp-cli.org/"
  version  "0.24.1"
  url      "https://github.com/wp-cli/wp-cli/releases/download/v#{version}/wp-cli-#{version}.phar"
  sha256   "cdc15ba1416c090262a0694edd4e2b656dcbd9ef5119258930d92d8c2e65f608"
  head     "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli-nightly.phar"

  def install
    bin.install "wp-cli-#{build.head? ? "nightly" : version}.phar" => "wp"
  end
end
