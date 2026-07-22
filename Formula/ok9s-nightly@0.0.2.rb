class Ok9sNightlyAT002 < Formula
  desc "k9s helper for ohouse member"
  homepage "https://github.com/bucketplace"
  version "0.0.2-4"
  depends_on "bucketplace/platform/portal-cli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.2-4/ok9s_0.0.2-4_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "85906c670a81757ea167a5aace635473e4a1d856a7d659788d326f8a546b94ff"

      def install
        bin.install "ok9s"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.2-4/ok9s_0.0.2-4_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ffc9d29e7a03958f7bbff31e1fba3c12297e4f647e3c3b0a83de026c5e397891"

      def install
        bin.install "ok9s"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.2-4/ok9s_0.0.2-4_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "783a31d492a3f5defd91dc43a059bea12f2c2426950172c6bc18599d7aa67cb5"

      def install
        bin.install "ok9s"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.2-4/ok9s_0.0.2-4_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c2acfebaa51466ff0e0138f1d71a764fd442ed61ffcf2e845ec40887fec90bad"

      def install
        bin.install "ok9s"
      end
    end
  end
end
