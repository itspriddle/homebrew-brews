class Composer < Formula
  homepage "https://getcomposer.org/download"
  version  "1.6.3"
  url      "https://getcomposer.org/download/#{version}/composer.phar"
  sha256   "52cb7bbbaee720471e3b34c8ae6db53a38f0b759c06078a80080db739e4dcab6"
  head     "https://getcomposer.org/composer.phar"

  def install
    bin.install "composer.phar" => "composer"
  end
end
