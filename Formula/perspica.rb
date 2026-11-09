class Perspica < Formula
  desc "Review code changes by what they do, and learn the concepts behind them"
  homepage "https://github.com/sshah03/perspica"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sshah03/perspica/releases/download/v0.5.1/perspica-aarch64-apple-darwin.tar.gz"
      sha256 "ce60d953d0b36baeb1182137f6aa75013fb5d52d681fd458d9dcf5642b8fd387"
    end
    on_intel do
      url "https://github.com/sshah03/perspica/releases/download/v0.5.1/perspica-x86_64-apple-darwin.tar.gz"
      sha256 "1096e7ecde9477289d0a686d8e17d40579722455f9dc1e2148f7ebe72dcfb230"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sshah03/perspica/releases/download/v0.5.1/perspica-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b8eb0021e63969023fbb4832fa1096f3a5b86334c1fa208d1c5965458d75f22"
    end
    on_intel do
      url "https://github.com/sshah03/perspica/releases/download/v0.5.1/perspica-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8495b21a32a5522f98a6290b3ddc0f30f6fe984eb61cca1d09cafa9afd11728a"
    end
  end

  def install
    bin.install "perspica"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/perspica --version")
  end
end
