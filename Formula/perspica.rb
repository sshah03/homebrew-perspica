class Perspica < Formula
  desc "Review code changes by what they do, and learn the concepts behind them"
  homepage "https://github.com/sshah03/perspica"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sshah03/perspica/releases/download/v0.4.0/perspica-aarch64-apple-darwin.tar.gz"
      sha256 "0c32bdf7f7328fc1e83cc1e246e59a73c74f4c586baeb160fcaa549b93878ee5"
    end
    on_intel do
      url "https://github.com/sshah03/perspica/releases/download/v0.4.0/perspica-x86_64-apple-darwin.tar.gz"
      sha256 "51368574cdfceb49f279d12653a71398d2e3e36e1c74799b2f743175e8406b51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sshah03/perspica/releases/download/v0.4.0/perspica-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5055198498fca1c5000d1b1fd68331791f643597cad08769187bd8de1108f4e2"
    end
    on_intel do
      url "https://github.com/sshah03/perspica/releases/download/v0.4.0/perspica-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d4ca959be22899f7a8c37fcb5f6181b22b4613ab1a1f8960b12880031066e6c"
    end
  end

  def install
    bin.install "perspica"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/perspica --version")
  end
end
