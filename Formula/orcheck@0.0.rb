class OrcheckAT00 < Formula
  desc "OpenRouter Usage check CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.2"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.2/orcheck_0.0.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3bcd616db2d75f7677cedeed56e2c8614a40c6aa0516b7e0da156bb3b07f898c"

      def install
        bin.install "orcheck"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.2/orcheck_0.0.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "993b9e9a537221b3e6a7d52dfc457fb9ef991363a4bc92fef27e2f81ee5691f9"

      def install
        bin.install "orcheck"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.2/orcheck_0.0.0_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4d7615124b27fd886160b6b78b866d41d7c8ad43d20e5ed284660eab74a89ec2"

      def install
        bin.install "orcheck"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.2/orcheck_0.0.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5e9a37dac20b1b38963897aa3e6f02ea4066b09e85e65a25a8251ad2b26a3cd3"

      def install
        bin.install "orcheck"
      end
    end
  end
end
