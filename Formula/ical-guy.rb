class IcalGuy < Formula
  version "0.10.1"

  desc "CLI for querying macOS calendar events, outputting JSON"
  homepage "https://github.com/itspriddle/ical-guy"
  url "https://github.com/itspriddle/ical-guy/releases/download/v#{version}/ical-guy-v#{version}-macos-universal.tar.gz"
  sha256 "9a423f147b21ce5bce24aa332a3bcece1353aa9293f1f362667ae233813f5048"
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
