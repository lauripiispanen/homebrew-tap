class GitWorkset < Formula
  desc "Named sparse-checkout profiles for git worktrees"
  homepage "https://github.com/lauripiispanen/git-workset"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-x86_64-apple-darwin.tar.gz"
      sha256 "7bca32b3726cd7348f768ddcec0b24abeea1dbd49c7f378c4f42976405e99972"
    end

    on_arm do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-aarch64-apple-darwin.tar.gz"
      sha256 "b3facaa093dbe1e97c9f3d7b0436c03caef70db6304a71654e294e22cb4aa152"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56529c5bc925271038dccaf90b092d897d1512fb96adbf36084cb701aec131fa"
    end

    on_arm do
      url "https://github.com/lauripiispanen/git-workset/releases/download/v#{version}/git-workset-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b5afb865803226a6e90412a2661e680e8931e3c72cccb9dfe37a8920b0b5273a"
    end
  end

  def install
    bin.install "git-workset"
  end

  test do
    system "#{bin}/git-workset", "--version"
  end
end
