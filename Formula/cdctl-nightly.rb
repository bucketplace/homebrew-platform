class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.79-47"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.79-47/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b82fffb0303422a806dc2a1f585be64a56db3e11b9c8037e0a8179737cb1852d"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.79-47/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ce4ab7620234459ed9580f8b31d77f29166b37f753030e76eea4e35a37127f41"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.79-47/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "16e9c3dd97098dd6b1da735b1239e8ccd04e6f98a1bcbb60035281eac8980049"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.79-47/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6501b3680e707041aaf6fa737e6d77d718f9e0775be23b11b0c9a821a5fb180c"

      def install
        bin.install "cdctl"
      end
    end
  end
end
