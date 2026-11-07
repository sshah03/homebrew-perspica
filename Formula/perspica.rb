class Perspica < Formula
  desc "Review code changes by what they do, and learn the concepts behind them"
  homepage "https://github.com/sshah03/perspica"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sshah03/perspica/releases/download/v0.5.0/perspica-aarch64-apple-darwin.tar.gz"
      sha256 "79958cd447eff59298084a3709ad7b8dc9f7e924c2f0680b69f9816ecdb8c379"
    end
    on_intel do
      url "https://github.com/sshah03/perspica/releases/download/v0.5.0/perspica-x86_64-apple-darwin.tar.gz"
      sha256 "f1b6999ed5384b1ace21edace2d6a37f23868b2242141827c68d9c02620b201c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sshah03/perspica/releases/download/v0.5.0/perspica-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0180528612f30496c7bb25b0f83dd8788a664968cf6cbc6fd40730906d719aa8"
    end
    on_intel do
      url "https://github.com/sshah03/perspica/releases/download/v0.5.0/perspica-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0750b554878d3a86bf1655a6515b7cb3a2e678c0b4147b57f3d1a420ded07973"
    end
  end

  def install
    bin.install "perspica"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/perspica --version")
  end
end
