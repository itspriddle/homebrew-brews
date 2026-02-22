class EmbyCli < Formula
  version "0.2.3"

  desc "Command-line interface for Emby media servers"
  homepage "https://github.com/itspriddle/emby-cli"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/itspriddle/emby-cli/releases/download/v#{version}/emby-aarch64-apple-darwin.tar.gz"
    sha256 "f8a4637a789a1a351b9592cda8535eb086ed06f30c4521dee4e13888581a27e5"
  end

  on_intel do
    url "https://github.com/itspriddle/emby-cli/releases/download/v#{version}/emby-x86_64-apple-darwin.tar.gz"
    sha256 "17bfe2e8267f4ea07e64649a5ae33f711d21fcf050ae9513fc3e112d98c9a5a3"
  end

  def install
    bin.install "emby"
    man1.install "man/man1/emby.1"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/emby --version")
  end
end
