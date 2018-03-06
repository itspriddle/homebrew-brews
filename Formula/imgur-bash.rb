class ImgurBash < Formula
  homepage "https://github.com/tremby/imgur.sh"
  head     "https://raw.githubusercontent.com/tremby/imgur.sh/master/imgur.sh"

  def install
    bin.install "imgur.sh" => "imgur"
  end
end
