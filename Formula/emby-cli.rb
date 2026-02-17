class EmbyCli < Formula
  version "0.1.0"

  desc "Command-line interface for Emby media servers"
  homepage "https://github.com/itspriddle/emby-cli"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/itspriddle/emby-cli/releases/download/v#{version}/emby-aarch64-apple-darwin.tar.gz"
    sha256 "32138c0c6a284c1691781720a9217ec79ab2fd70decbd401e6f99620277f8ceb"
  end

  on_intel do
    url "https://github.com/itspriddle/emby-cli/releases/download/v#{version}/emby-x86_64-apple-darwin.tar.gz"
    sha256 "447c69010d92b25f87695ce9c2c9f746848d9624f7a114d30bf765b462f3bfd5"
  end

  def install
    bin.install "emby"
    man1.install "man/man1/emby.1"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/emby --version")
  end
end
