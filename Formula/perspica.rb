class Perspica < Formula
  desc "Review code changes by what they do, and learn the concepts behind them"
  homepage "https://github.com/sshah03/perspica"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sshah03/perspica/releases/download/v0.4.1/perspica-aarch64-apple-darwin.tar.gz"
      sha256 "e4b9a30e148844f3ac5b363f2b28894f05d54c086379e95a294977bde7ec67c2"
    end
    on_intel do
      url "https://github.com/sshah03/perspica/releases/download/v0.4.1/perspica-x86_64-apple-darwin.tar.gz"
      sha256 "0e497a0dbb4197c68c7bafd31d22b47181ddd39d0f581249dad8c38efadd0735"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sshah03/perspica/releases/download/v0.4.1/perspica-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6d349d6a66f8e55f7f921ae92d74f5495bc1ebe8bf89ea2af0254727675e6b19"
    end
    on_intel do
      url "https://github.com/sshah03/perspica/releases/download/v0.4.1/perspica-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f5645aeedabb769f1d390c5b03ff966b077d59fce595d59e6b22f6047d87a7af"
    end
  end

  def install
    bin.install "perspica"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/perspica --version")
  end
end
