class WpCli < Formula
  homepage "http://wp-cli.org/"
  version  "1.2.0"
  url      "https://github.com/wp-cli/wp-cli/releases/download/v#{version}/wp-cli-#{version}.phar"
  sha256   "40a4bc41113eb1954e53b29f0ce44b6a56cbf3f4418fbbd1876ff0fbc010a1ec"
  head     "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli-nightly.phar"

  def install
    bin.install "wp-cli-#{build.head? ? "nightly" : version}.phar" => "wp"
  end
end
