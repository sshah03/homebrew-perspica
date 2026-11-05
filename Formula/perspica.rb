class Perspica < Formula
  desc "Review code changes by what they do, and learn the concepts behind them"
  homepage "https://github.com/sshah03/perspica"
  license "MIT"

  bottle do
    root_url "https://github.com/sshah03/homebrew-perspica/releases/download/perspica-0.4.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "2ac0b7f87a0006c5b22a070e9f08c7a99089901ca814ca9e1b780588089c9fe2"
    sha256 cellar: :any_skip_relocation, sequoia:       "bf9560b5b583a4bb8e3fa483521f64ec2fe3734804d4382f3eda3eb184dd15f0"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "aeb5ba252be71e4f848d52f42c7b6ef0024fdd5c6f43b014be3bc06897e34bf3"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "c23fcac104da0dfb23caee196cfd3a3aaec715dcfe5f4cafbeeac01d39bbbf99"
  end

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
