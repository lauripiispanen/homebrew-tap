class Psy < Formula
  desc "Cross-platform process lifecycle manager"
  homepage "https://github.com/lauripiispanen/psy"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/lauripiispanen/psy/releases/download/v#{version}/psy-x86_64-apple-darwin.tar.gz"
      sha256 "6a6a3f1b95370f4b856968377c20d6771744c714fabc4dd7b5eec1b8a057280e"
    end

    on_arm do
      url "https://github.com/lauripiispanen/psy/releases/download/v#{version}/psy-aarch64-apple-darwin.tar.gz"
      sha256 "65f1665e55ce1dd4bfb1dcb7e0b71518f38fc88205f4e2e204b01608e2e0e134"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lauripiispanen/psy/releases/download/v#{version}/psy-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f4d0e0deb860b6e5ffbbfc2f9b9463719b1bd10963b1d253ac4c543fd6ef135"
    end

    on_arm do
      url "https://github.com/lauripiispanen/psy/releases/download/v#{version}/psy-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9bcab9a1854731efe49cc93c710f80daeccb15244b7096278893395626247518"
    end
  end

  def install
    bin.install "psy"
  end

  test do
    system "#{bin}/psy", "version"
  end
end
