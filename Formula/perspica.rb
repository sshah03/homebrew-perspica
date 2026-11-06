class Perspica < Formula
  desc "Review code changes by what they do, and learn the concepts behind them"
  homepage "https://github.com/sshah03/perspica"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sshah03/perspica/releases/download/v0.4.2/perspica-aarch64-apple-darwin.tar.gz"
      sha256 "ee3d19cda74b8dd9f6a041e71b8d9146b09e2c5ce76b0ebfdcfea3a968ce6bf7"
    end
    on_intel do
      url "https://github.com/sshah03/perspica/releases/download/v0.4.2/perspica-x86_64-apple-darwin.tar.gz"
      sha256 "dfcedd7ad21ea784734a2b3bd3055170bbefdc504540fb078f438c0cba06f653"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sshah03/perspica/releases/download/v0.4.2/perspica-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "996137ec18e6fbeda1b847ca1f0115737a7bac715b6e42dcacbf174cecb8d46c"
    end
    on_intel do
      url "https://github.com/sshah03/perspica/releases/download/v0.4.2/perspica-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8480ff2588972bf2392bab344338cb719113ae752c74acb3fa6d1f704eaa5ff"
    end
  end

  def install
    bin.install "perspica"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/perspica --version")
  end
end
