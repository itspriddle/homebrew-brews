class Jccs < Formula
  desc "Josh's Claude Code Statusline"
  homepage "https://github.com/itspriddle/jccs"
  version "0.5.0"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/itspriddle/jccs/releases/download/v#{version}/jccs-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d9db3d9478838302fc0ceb20ec31c60cefa07dff6a0933a0d6b2e4b2ae75dcd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/itspriddle/jccs/releases/download/v#{version}/jccs-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d58c2bb7dcbd0751c746cfffbbf42116c3f5a7d1426aff873a487cb29e264433"
    end

    on_intel do
      url "https://github.com/itspriddle/jccs/releases/download/v#{version}/jccs-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3cc3d28cfb00b06a312765d737504e72c8d4a6fa5ecc644da70ae5254b462dca"
    end
  end

  def install
    bin.install "jccs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jccs --version")
  end
end
