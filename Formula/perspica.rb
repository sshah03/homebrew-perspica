class Perspica < Formula
  desc "Review code changes by what they do, and learn the concepts behind them"
  homepage "https://github.com/sshah03/perspica"
  license "MIT"

  bottle do
    root_url "https://github.com/sshah03/homebrew-perspica/releases/download/perspica-0.5.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "7d7f2f173a7e2c5c6f159f62b2762e621e3ce15d986e8577124db68bdd9ea747"
    sha256 cellar: :any_skip_relocation, sequoia:       "da65bdefff68091ec779ac5d0c95d6b0f3440d0f7ae45cf949bd32dfbecd42f7"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "ffbe9a87adffbbd7827a0bfba6fdc183caf63ada04f68db79df411418163ddd5"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "5088569b0f2717bb808275d07a1127671248c1e8a3544611b3452309eac2212f"
  end

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
