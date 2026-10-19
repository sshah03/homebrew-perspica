class Perspica < Formula
  desc "Review code changes by what they do, and learn the concepts behind them"
  homepage "https://github.com/sshah03/perspica"
  license "MIT"

  bottle do
    root_url "https://github.com/sshah03/homebrew-perspica/releases/download/perspica-0.3.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e22ed4521617814eee3e0e0ccf1d15a21007558ceb9f0b42aee55c3657250c2a"
    sha256 cellar: :any_skip_relocation, sequoia:       "a52beb02dcfb1b09b3d15b2fe407c18b78e5e02c23b9a0bd9dbbc55e612ce83d"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "04de4e2100c370a6e2fe4b7dce05a0c66e5eed61d1a2c34d383b995f1be2e505"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "6ac7e5bb8a9bda368808a4f923e519079852d663bb02adcd651450930469e5d0"
  end

  on_macos do
    on_arm do
      url "https://github.com/sshah03/perspica/releases/download/v0.3.0/perspica-aarch64-apple-darwin.tar.gz"
      sha256 "4d2a708a90844f2f70e29e7ed39b53206bae87ba72e724f43709440645beb988"
    end
    on_intel do
      url "https://github.com/sshah03/perspica/releases/download/v0.3.0/perspica-x86_64-apple-darwin.tar.gz"
      sha256 "6e628eb403b8e4bdbc0a3fe15640259fc482eae27452ad5239bc8b7764246b5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sshah03/perspica/releases/download/v0.3.0/perspica-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0669452b5db434be8e79b3ce1c70b754ebed396834c84986fec07ad898bd90fe"
    end
    on_intel do
      url "https://github.com/sshah03/perspica/releases/download/v0.3.0/perspica-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c39bc7091b82063828d97acc7ccc6147bcb0f5f835d6c030db900c1cfd5aef19"
    end
  end

  def install
    bin.install "perspica"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/perspica --version")
  end
end
