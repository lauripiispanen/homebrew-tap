class GitWorkset < Formula
  desc "Named sparse-checkout profiles for git worktrees"
  homepage "https://github.com/lauripiispanen/git-workset"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-x86_64-apple-darwin.tar.gz"
      sha256 "742ba9b5f299b511315355269a3a1c6fa262752955eb8464c9655ad870c9319d"
    end

    on_arm do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-aarch64-apple-darwin.tar.gz"
      sha256 "6c11be53e4be67e95465c3c7fd0447f15adcb40aa91293d3d69e2aac8749a815"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "484480f9b7be8c7dcc6f88b0ce84c4645831ec4c88a803f6d1b3a0d0d48d4410"
    end

    on_arm do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5d10a4485ca49c4998059e624c3bfe561bb5ba170274911c55460e642253a5ad"
    end
  end

  def install
    bin.install "git-workset"
  end

  test do
    system "#{bin}/git-workset", "--version"
  end
end
