require 'formula'

class WpCli < Formula
  homepage "http://wp-cli.org/"
  version  "0.20.4"
  url      "https://github.com/wp-cli/wp-cli/releases/download/v#{version}/wp-cli-#{version}.phar"
  sha256   "26f968374c9abb0ae60764c737ea41966475e058b1c142a050f00d35f9c544c9"

  def install
    bin.install "wp-cli-#{self.class.version}.phar" => "wp"
  end
end
