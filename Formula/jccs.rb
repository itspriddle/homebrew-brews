class Jccs < Formula
  desc "Josh's Claude Code Statusline"
  homepage "https://github.com/itspriddle/jccs"
  version "0.6.0"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/itspriddle/jccs/releases/download/v#{version}/jccs-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a63ea73503ee468f45f402752dd7df3df6685250e7ffd9fb8720a2466edd269d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/itspriddle/jccs/releases/download/v#{version}/jccs-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "034a328a75b6731928069e6cfc919c2f3896c6913eec7e6e088106b5ca67e480"
    end

    on_intel do
      url "https://github.com/itspriddle/jccs/releases/download/v#{version}/jccs-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "33c30b9049db713acaa6284f8f4a3d8c03907967d128c269a4f70f2e689f69e5"
    end
  end

  def install
    bin.install "jccs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jccs --version")
  end
end
