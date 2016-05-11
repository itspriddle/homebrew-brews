class WpCli < Formula
  homepage "http://wp-cli.org/"
  version  "0.23.1"
  url      "https://github.com/wp-cli/wp-cli/releases/download/v#{version}/wp-cli-#{version}.phar"
  sha256   "aea82d6fb23ab23c895cd1cc46ad54e47eb68e4035e1aea940d2742d1f8a4aea"
  head     "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli-nightly.phar"

  def install
    bin.install "wp-cli-#{build.head? ? "nightly" : version}.phar" => "wp"
  end
end
