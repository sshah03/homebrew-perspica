class Perspica < Formula
  desc "Review code changes by what they do, and learn the concepts behind them"
  homepage "https://github.com/sshah03/perspica"
  license "MIT"

  bottle do
    root_url "https://github.com/sshah03/homebrew-perspica/releases/download/perspica-0.4.2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "79a2667274920418da8f177f4672a30221b3b89f02b2f6d8721687944d43cb13"
    sha256 cellar: :any_skip_relocation, sequoia:       "08db0846edc786d75830e54ac6c33be1f593bc0149ebac993dbc04a400b38b47"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "0b7cee3b78cd346160cd82dc67f1a667ca5273ed399dbb4c57acf320f98ce0f5"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "f9fef5b398f0d015ea1026b40f3b6b74c75b34002f209811c6c05b5dc9587541"
  end

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
