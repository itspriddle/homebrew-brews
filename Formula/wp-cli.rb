require 'formula'

class WpCli < Formula
  homepage "http://wp-cli.org/"
  url "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar"
  version "HEAD"

  def install
    bin.install "wp-cli.phar" => "wp"
  end
end
