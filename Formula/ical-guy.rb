class IcalGuy < Formula
  version "0.2.0"

  desc "CLI for querying macOS calendar events, outputting JSON"
  homepage "https://github.com/itspriddle/ical-guy"
  url "https://github.com/itspriddle/ical-guy/releases/download/v#{version}/ical-guy-v#{version}-macos-universal.tar.gz"
  sha256 "1406534e4f5960af2954cfeddc7cca7c831cca6f10f67700cca72945d2665cbf"
  license "MIT"

  depends_on :macos

  def install
    bin.install "ical-guy"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/ical-guy --version")
  end
end
