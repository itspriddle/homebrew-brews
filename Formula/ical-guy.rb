class IcalGuy < Formula
  version "0.12.0"

  desc "CLI for querying macOS calendar events, outputting JSON"
  homepage "https://github.com/itspriddle/ical-guy"
  url "https://github.com/itspriddle/ical-guy/releases/download/v#{version}/ical-guy-v#{version}-macos-universal.tar.gz"
  sha256 "cbb56ca9a8a20ee1a5873edecde4955e9e6a7ef8c2c8f2bc1519de34c829be53"
  license "MIT"

  depends_on :macos

  def install
    bin.install "ical-guy"
    man1.install "man/man1/ical-guy.1"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/ical-guy --version")
  end
end
