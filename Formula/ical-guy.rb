class IcalGuy < Formula
  version "0.11.0"

  desc "CLI for querying macOS calendar events, outputting JSON"
  homepage "https://github.com/itspriddle/ical-guy"
  url "https://github.com/itspriddle/ical-guy/releases/download/v#{version}/ical-guy-v#{version}-macos-universal.tar.gz"
  sha256 "d25d85c200153b13fb07b111b018c497090375c2a051e0568897c0c78e9d289b"
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
