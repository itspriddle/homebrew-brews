class SlackNotify < Formula
  version "0.0.1"

  homepage "https://github.com/itspriddle/slack-notify"
  url      "https://github.com/itspriddle/slack-notify/archive/v#{version}.tar.gz"
  sha256   "cdb74834a16016e65d7fcf649e6bfef09c15c01df6ce11bd3ed9c2aad5f243cc"

  head "https://github.com/itspriddle/slack-notify.git"

  def install
    bin.install "bin/slack-notify"
    man1.install "share/man/man1/slack-notify.1"
  end
end
