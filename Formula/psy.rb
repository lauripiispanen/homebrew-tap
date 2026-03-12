class Psy < Formula
  desc "Cross-platform process lifecycle manager"
  homepage "https://github.com/lauripiispanen/psy"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/lauripiispanen/psy/releases/download/v#{version}/psy-x86_64-apple-darwin.tar.gz"
      sha256 "69cdceabd4057a6a37156ab8671f11cf89050fcb3a0e31cac13f83a752028bfb"
    end

    on_arm do
      url "https://github.com/lauripiispanen/psy/releases/download/v#{version}/psy-aarch64-apple-darwin.tar.gz"
      sha256 "84b51ec93b74e959c537f6b79370dc813356f3fe7d3f9e0ea7c0bb3c2bf8fd39"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lauripiispanen/psy/releases/download/v#{version}/psy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6c44074cd2a5205aa27cf3ecfd9e91a92c1485baa6e75c92b33108d9b06d7bb1"
    end

    on_arm do
      url "https://github.com/lauripiispanen/psy/releases/download/v#{version}/psy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "49a299ffb2aa6e57ee59ee1f3229a6cbde72280f51b5e16b5493d650441e788d"
    end
  end

  def install
    bin.install "psy"
  end

  test do
    system "#{bin}/psy", "version"
  end
end
