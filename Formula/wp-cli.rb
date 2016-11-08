class WpCli < Formula
  homepage "http://wp-cli.org/"
  version  "0.25.0"
  url      "https://github.com/wp-cli/wp-cli/releases/download/v#{version}/wp-cli-#{version}.phar"
  sha256   "20afc72b502d072bc26e95c1e61c12554277a56eb7451df2b92a46d32393bb97"
  head     "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli-nightly.phar"

  def install
    bin.install "wp-cli-#{build.head? ? "nightly" : version}.phar" => "wp"
  end
end
