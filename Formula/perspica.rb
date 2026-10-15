class Perspica < Formula
  desc "Review code changes by what they do, and learn the concepts behind them"
  homepage "https://github.com/sshah03/perspica"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sshah03/perspica/releases/download/v0.2.1/perspica-aarch64-apple-darwin.tar.gz"
      sha256 "856fa2600bef378e5bbf13960b2b18a3b5adb6047c8e6970695d9a18100c329a"
    end
    on_intel do
      url "https://github.com/sshah03/perspica/releases/download/v0.2.1/perspica-x86_64-apple-darwin.tar.gz"
      sha256 "3100596dba785add709c2c1174b9ca4c90148ea9181be0daaaff24d24866d5df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sshah03/perspica/releases/download/v0.2.1/perspica-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8917fcadfa15be8072c2bddf1a5f549253ac0bd4b368651c065278675bd5cbed"
    end
    on_intel do
      url "https://github.com/sshah03/perspica/releases/download/v0.2.1/perspica-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "061e5e638c015f0f47afe7561feeb15247b693e67deb867106c7f1cb2a332f9f"
    end
  end

  def install
    bin.install "perspica"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/perspica --version")
  end
end
