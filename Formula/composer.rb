class Composer < Formula
  homepage "https://getcomposer.org/download"
  version  "1.2.2"
  url      "https://getcomposer.org/download/#{version}/composer.phar"
  sha256   "c6ae4e099351233f5f82ade9738475eec6587aadf9ffe66fec4c350b329fbb32"
  head     "https://getcomposer.org/composer.phar"

  def install
    bin.install "composer.phar" => "composer"
  end
end
