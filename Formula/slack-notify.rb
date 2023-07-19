class SlackNotify < Formula
  version "0.0.2"

  homepage "https://github.com/itspriddle/slack-notify"
  url      "https://github.com/itspriddle/slack-notify/archive/v#{version}.tar.gz"
  sha256   "2cfbed59688dbc74a1341b09f885216bf3bddd8302853cb3f4911f73373eafd4"

  head "https://github.com/itspriddle/slack-notify.git"

  def install
    bin.install "bin/slack-notify"
    man1.install "share/man/man1/slack-notify.1"
  end
end
