class WpCli < Formula
  homepage "http://wp-cli.org/"
  version  "1.3.0"
  url      "https://github.com/wp-cli/wp-cli/releases/download/v#{version}/wp-cli-#{version}.phar"
  sha256   "3edb7cac7dbd07a80c0ab592c0211aa89b158df43e647d8e5ad9a883a518ad60"
  head     "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli-nightly.phar"

  def install
    bin.install "wp-cli-#{build.head? ? "nightly" : version}.phar" => "wp"
  end
end
