class Composer < Formula
  homepage "https://getcomposer.org/"
  version  "1.0.2"
  url      "https://getcomposer.org/download/#{version}/composer.phar"
  sha256   "264673ccee900b22192605b8c74ecb77c45a5197347edacd142699866c478f4c"
  head     "https://getcomposer.org/composer.phar"

  def install
    bin.install "composer.phar" => "composer"
  end
end
