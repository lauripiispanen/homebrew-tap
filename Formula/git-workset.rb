class GitWorkset < Formula
  desc "Named sparse-checkout profiles for git worktrees"
  homepage "https://github.com/lauripiispanen/git-workset"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-x86_64-apple-darwin.tar.gz"
      sha256 "28505c8b55b4a53f42ca2e7f75ceceb9a3c915b7fc7b0d5ff2c003654de12019"
    end

    on_arm do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-aarch64-apple-darwin.tar.gz"
      sha256 "17f01f4c73d35fdcd016fa16f806c84384f2beecdd2596481fc8c77d449db720"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "efae8125926d602c87265360ec9544b0bc903a4a0e92aee5ede5acfe4ca44257"
    end

    on_arm do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eed648943a9b81dbd77c0d9bf1bc1c040e842aef3baa0a87605a6ae23b75ff80"
    end
  end

  def install
    bin.install "git-workset"
  end

  test do
    system "#{bin}/git-workset", "--version"
  end
end
