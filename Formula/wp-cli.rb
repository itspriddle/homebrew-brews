class WpCli < Formula
  homepage "http://wp-cli.org/"
  version  "1.5.0"
  url      "https://github.com/wp-cli/wp-cli/releases/download/v#{version}/wp-cli-#{version}.phar"
  sha256   "f615d57957e66a09f57acc844a1fc5402e9fa581dcb387bbe1affc4d155baf9d"
  head     "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli-nightly.phar"

  def install
    bin.install "wp-cli-#{build.head? ? "nightly" : version}.phar" => "wp"
  end
end
