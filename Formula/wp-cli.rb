class WpCli < Formula
  homepage "http://wp-cli.org/"
  version  "0.23.0"
  url      "https://github.com/wp-cli/wp-cli/releases/download/v#{version}/wp-cli-#{version}.phar"
  sha256   "72aad2b1a8b5cee0d39f1ad02b6a3c2f1c8fa8a04daead5b6c319afff092cd37"
  head     "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli-nightly.phar"

  def install
    bin.install "wp-cli-#{build.head? ? "nightly" : version}.phar" => "wp"
  end
end
