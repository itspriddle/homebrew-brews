class WpCli < Formula
  homepage "http://wp-cli.org/"
  version  "1.2.1"
  url      "https://github.com/wp-cli/wp-cli/releases/download/v#{version}/wp-cli-#{version}.phar"
  sha256   "9f9b1036165cf29143414a1c77f39802c4b9c3081a3cbaa6e7524d052ab449b7"
  head     "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli-nightly.phar"

  def install
    bin.install "wp-cli-#{build.head? ? "nightly" : version}.phar" => "wp"
  end
end
