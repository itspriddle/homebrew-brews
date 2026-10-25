class Jccs < Formula
  desc "Josh's Claude Code Statusline"
  homepage "https://github.com/itspriddle/jccs"
  version "0.2.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/itspriddle/jccs/releases/download/v#{version}/jccs-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "97bfdd5505e0a97326200708295f50cf347b76029829d34b52bf5e86a9b64cc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/itspriddle/jccs/releases/download/v#{version}/jccs-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e63cbf7985add18afaa046b9a4c53cb60c50b7c6f92030acd72b228dd6f34064"
    end

    on_intel do
      url "https://github.com/itspriddle/jccs/releases/download/v#{version}/jccs-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "67f6d65d5c4fde647b361169c65b0d8979e87afe2b8ece39cd0d33605ee07c2f"
    end
  end

  def install
    bin.install "jccs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jccs --version")
  end
end
