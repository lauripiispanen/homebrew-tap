class GitWorkset < Formula
  desc "Named sparse-checkout profiles for git worktrees"
  homepage "https://github.com/lauripiispanen/git-workset"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-x86_64-apple-darwin.tar.gz"
      sha256 "3534b1e385842a82f94226b4168e2d1d4a3bc0345357a7258ac6d9ea98c75dce"
    end

    on_arm do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-aarch64-apple-darwin.tar.gz"
      sha256 "ea21ba8c6e70490b7e6a11b98d411c89c3565940647b78fabe43fb93cb98c5f3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd3e6e2ef2cbdc6fa8fe7dc47b782e6c7752096adde2eda766ae465cd1923e5f"
    end

    on_arm do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bcd3da8ce61354d1bfe5429f6d1d6034397be2da845bbadf05db8100725fe3c3"
    end
  end

  def install
    bin.install "git-workset"
  end

  test do
    system "#{bin}/git-workset", "--version"
  end
end
