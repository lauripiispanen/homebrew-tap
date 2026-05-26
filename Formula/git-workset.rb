class GitWorkset < Formula
  desc "Named sparse-checkout profiles for git worktrees"
  homepage "https://lauripiispanen.github.io/git-workset/"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-x86_64-apple-darwin.tar.gz"
      sha256 "01400cc9902547e0e374f04700f0cbb078bec10c1ef50b7577d71de533f9b924"
    end

    on_arm do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-aarch64-apple-darwin.tar.gz"
      sha256 "ffcb85137eaea2abac3aadc33b8e13b971a911f094c23f4c9435958faa6ce794"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad0e73250d6b639ab17559d39f39a9656875f6c6a60bd19406c9af45c64e7b9f"
    end

    on_arm do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a659459ef433cd35b7dabcd1880d1e5aa13514412d14e7fd0fc16fb757200995"
    end
  end

  def install
    bin.install "git-workset"
  end

  test do
    system "#{bin}/git-workset", "--version"
  end
end
