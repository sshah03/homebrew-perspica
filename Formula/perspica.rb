class Perspica < Formula
  desc "Review code changes by what they do, not line by line"
  homepage "https://github.com/sshah03/perspica"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sshah03/perspica/releases/download/v0.1.8/perspica-aarch64-apple-darwin.tar.gz"
      sha256 "328a4647d8ac7e91c3fd2f3f61ce2b845a2bc68ef3fbd53aa7f3a7d01a47fa1a"
    end
    on_intel do
      url "https://github.com/sshah03/perspica/releases/download/v0.1.8/perspica-x86_64-apple-darwin.tar.gz"
      sha256 "40ad064ffc54c2bdee78d201d43110648553306dd193c0be18665b1665876cfe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sshah03/perspica/releases/download/v0.1.8/perspica-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ca18da8a1d153b354d48a0ebc305aed9aa2c632a4e79909dc425748054fa9cf0"
    end
    on_intel do
      url "https://github.com/sshah03/perspica/releases/download/v0.1.8/perspica-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f2a65f11c7904e0db2a320ef8ccb61494be039796648163b63bef56ca5185f2f"
    end
  end

  def install
    bin.install "perspica"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/perspica --version")
  end
end
