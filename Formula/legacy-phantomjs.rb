class LegacyPhantomjs < Formula
  desc "Legacy PhantomJS for Pressed apps"
  url "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-macosx.zip"
  version "1.9.8"
  sha256 "8f15043ae3031815dc5f884ea6ffa053d365491b1bc0dc3a0862d5ff1ac20a48"

  def install
    bin.install "bin/phantomjs" => "phantomjs"
  end
end
