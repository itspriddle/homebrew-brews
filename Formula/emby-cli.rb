class EmbyCli < Formula
  version "0.2.2"

  desc "Command-line interface for Emby media servers"
  homepage "https://github.com/itspriddle/emby-cli"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/itspriddle/emby-cli/releases/download/v#{version}/emby-aarch64-apple-darwin.tar.gz"
    sha256 "a022fd0b9622e410db02734b0d29bd2b036a6cf0c355112758a01d55e6b9da11"
  end

  on_intel do
    url "https://github.com/itspriddle/emby-cli/releases/download/v#{version}/emby-x86_64-apple-darwin.tar.gz"
    sha256 "35af7733713ffacae89aab4952c57ab67a0f7ec3cb86788004b31f2d996b3d53"
  end

  def install
    bin.install "emby"
    man1.install "man/man1/emby.1"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/emby --version")
  end
end
