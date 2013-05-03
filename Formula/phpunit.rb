require 'formula'

class Phpunit < Formula
  homepage 'http://www.phpunit.de/manual/current/en/index.html'
  url 'http://pear.phpunit.de/get/phpunit.phar'
  sha1 '7aaa26086ddf7cd0c517d7f52b74a53a7a1d7e29'
  version 'HEAD'

  def install
    bin.install "phpunit.phar" => "phpunit"
  end
end
