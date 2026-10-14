class Perspica < Formula
  desc "Review code changes by what they do, and learn the concepts behind them"
  homepage "https://github.com/sshah03/perspica"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sshah03/perspica/releases/download/v0.2.0/perspica-aarch64-apple-darwin.tar.gz"
      sha256 "356e6256f0e4e2b109d5b94402b07d18138e93ff26afedd21291959574ae3529"
    end
    on_intel do
      url "https://github.com/sshah03/perspica/releases/download/v0.2.0/perspica-x86_64-apple-darwin.tar.gz"
      sha256 "f655b521a81e828022892408db67e9bb40f0496dd2382d3882c66668b450ed41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sshah03/perspica/releases/download/v0.2.0/perspica-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0353671ffb516b6398c9bee3e99a41200d84649a6209d0f7a76eeebcc3511495"
    end
    on_intel do
      url "https://github.com/sshah03/perspica/releases/download/v0.2.0/perspica-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "174629534200457e2d04375ef7d476ec59429ab9f7c18edea0726ae1062ed16f"
    end
  end

  def install
    bin.install "perspica"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/perspica --version")
  end
end
