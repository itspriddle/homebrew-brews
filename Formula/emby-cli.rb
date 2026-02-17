class EmbyCli < Formula
  version "0.2.0"

  desc "Command-line interface for Emby media servers"
  homepage "https://github.com/itspriddle/emby-cli"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/itspriddle/emby-cli/releases/download/v#{version}/emby-aarch64-apple-darwin.tar.gz"
    sha256 "971982eda18e0966fa8bfe3338974e61ffd97bcf7b713dd0f336e936952d87a9"
  end

  on_intel do
    url "https://github.com/itspriddle/emby-cli/releases/download/v#{version}/emby-x86_64-apple-darwin.tar.gz"
    sha256 "abd11fdc48fc5c6848a20750b4ceddec3f8b6946710d281273d9edeeb138f87e"
  end

  def install
    bin.install "emby"
    man1.install "man/man1/emby.1"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/emby --version")
  end
end
