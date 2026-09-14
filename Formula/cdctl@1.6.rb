class CdctlAT16 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.76"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.76/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "537981d50f5552bd102b1a3f5516677ab68a911ed3d755c5c50fdde328a9681f"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.76/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "87c1efd4a2a14067f0150f430402c30b0fd6c185e622c9ea3560722ad332f1f6"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.76/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bbfb6c2fea25f7384c5cda2df957fc385ccc9b04dac1cf0f30f5773a0d8ac1d9"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.76/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c1681c555dd33e90272002b16c09eb8ac5a6e8c9f9e9494263e5e86b0b94e0ab"

      def install
        bin.install "cdctl"
      end
    end
  end
end
