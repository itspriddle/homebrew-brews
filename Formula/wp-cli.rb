class WpCli < Formula
  homepage "http://wp-cli.org/"
  version  "1.1.0"
  url      "https://github.com/wp-cli/wp-cli/releases/download/v#{version}/wp-cli-#{version}.phar"
  sha256   "ac877071bd85e3fe0e0ade5feef8b85a9a474737eab7d5682f2e2987d8a76221"
  head     "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli-nightly.phar"

  def install
    bin.install "wp-cli-#{build.head? ? "nightly" : version}.phar" => "wp"
  end
end
