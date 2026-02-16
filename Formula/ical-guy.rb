class IcalGuy < Formula
  version "0.5.0"

  desc "CLI for querying macOS calendar events, outputting JSON"
  homepage "https://github.com/itspriddle/ical-guy"
  url "https://github.com/itspriddle/ical-guy/releases/download/v#{version}/ical-guy-v#{version}-macos-universal.tar.gz"
  sha256 "62f5b91f5a1a261a979897b7f2cacb7b7b3d23425ed714686192ceb11de7a1a8"
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
