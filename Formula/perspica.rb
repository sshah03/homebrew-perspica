class Perspica < Formula
  desc "Review code changes by what they do, and learn the concepts behind them"
  homepage "https://github.com/sshah03/perspica"
  license "MIT"

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
