class IcalGuy < Formula
  version "0.1.0"

  desc "CLI for querying macOS calendar events, outputting JSON"
  homepage "https://github.com/itspriddle/ical-guy"
  url "https://github.com/itspriddle/ical-guy/releases/download/v#{version}/ical-guy-v#{version}-macos-universal.tar.gz"
  sha256 "d03febfbb9f0877b7178ba3d8a1e99d80da70683aaf667b2d9d9aa2941734930"
  license "MIT"

  depends_on :macos

  def install
    bin.install "ical-guy"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/ical-guy --version")
  end
end
