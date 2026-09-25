class IcalGuy < Formula
  version "0.15.0"

  desc "CLI for querying macOS calendar events, outputting JSON"
  homepage "https://github.com/itspriddle/ical-guy"
  url "https://github.com/itspriddle/ical-guy/releases/download/v#{version}/ical-guy-v#{version}-macos-universal.tar.gz"
  sha256 "dc8071ae475f8b62c42e7367c09dde132ef518ed09e2dc9d5a625b52f8f0950c"
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
