class Jccs < Formula
  desc "Josh's Claude Code Statusline"
  homepage "https://github.com/itspriddle/jccs"
  version "0.3.0"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/itspriddle/jccs/releases/download/v#{version}/jccs-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "922568b48b9011927d42ec2ed99a6276c442c4a69222dc0b3eec63be7071a20d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/itspriddle/jccs/releases/download/v#{version}/jccs-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f42c603e967c80f4105a32e3ca85d8ab175f70e102561e374004e87e9e84874a"
    end

    on_intel do
      url "https://github.com/itspriddle/jccs/releases/download/v#{version}/jccs-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "581122d251fbf4bea0bdf4bfb9463d726c3a10e50cde6a500b0a8085852d0a49"
    end
  end

  def install
    bin.install "jccs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jccs --version")
  end
end
