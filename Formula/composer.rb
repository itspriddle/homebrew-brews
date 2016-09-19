class Composer < Formula
  homepage "https://getcomposer.org/download"
  version  "1.2.1"
  url      "https://getcomposer.org/download/#{version}/composer.phar"
  sha256   "c2e04040b807a8530e5c83de56bdaaf63a0f183f8fd449bbe6e41f660e647427"
  head     "https://getcomposer.org/composer.phar"

  def install
    bin.install "composer.phar" => "composer"
  end
end
