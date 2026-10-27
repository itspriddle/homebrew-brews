class Jccs < Formula
  desc "Josh's Claude Code Statusline"
  homepage "https://github.com/itspriddle/jccs"
  version "0.7.0"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/itspriddle/jccs/releases/download/v#{version}/jccs-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4251ee27629c7d3fd630d13901328545ab27cc54cbf9bca57977e0efc1b6a5be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/itspriddle/jccs/releases/download/v#{version}/jccs-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9922d6b8c8c9618960e2d8789aace63e23ed1967326b82f7a1ce8e1fb00a1298"
    end

    on_intel do
      url "https://github.com/itspriddle/jccs/releases/download/v#{version}/jccs-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "758f2156a5a51bebb38250472ed3837970ae8324bc75057c7d8446a3d2daf0c0"
    end
  end

  def install
    bin.install "jccs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jccs --version")
  end
end
