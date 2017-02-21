class Shotty < Formula
  version  "0.0.1"
  homepage "https://github.com/itspriddle/shotty"
  url      "https://github.com/itspriddle/shotty/archive/v0.0.1.tar.gz"
  sha256   "c9f64b64d75d22d687ae31f8d6c0270d6dcae61bb32c4cab12e2efcca1bc4b75"

  head "https://github.com/itspriddle/shotty"

  def install
    bin.install "bin/shotty"
  end
end
