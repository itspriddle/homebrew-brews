class EmbyCli < Formula
  version "0.1.0"

  desc "Command-line interface for Emby media servers"
  homepage "https://github.com/itspriddle/emby-cli"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/itspriddle/emby-cli/releases/download/v#{version}/emby-aarch64-apple-darwin.tar.gz"
    sha256 "TODO"
  end

  on_intel do
    url "https://github.com/itspriddle/emby-cli/releases/download/v#{version}/emby-x86_64-apple-darwin.tar.gz"
    sha256 "TODO"
  end

  def install
    bin.install "emby"
    man1.install "man/man1/emby.1"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/emby --version")
  end
end
