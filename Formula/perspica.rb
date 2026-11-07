class Perspica < Formula
  desc "Review code changes by what they do, and learn the concepts behind them"
  homepage "https://github.com/sshah03/perspica"
  license "MIT"

  bottle do
    root_url "https://github.com/sshah03/homebrew-perspica/releases/download/perspica-0.5.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "7a22257b08657c82546a17d5e86223d8cc19df6ede5274ede7ac52388e503299"
    sha256 cellar: :any_skip_relocation, sequoia:       "b5fed305aa633d578ec1cdb98255e54d2ca6a4268990e24ed2a0b29fe06ea073"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "9bddff5e1df170c861beca110702f25e153f47444874f476112a192a5af0acce"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "704a95ea054307080ec9df73d1a8f65a2517c76701a4d971d8c37cef6281afec"
  end

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
