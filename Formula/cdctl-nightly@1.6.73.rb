class CdctlNightlyAT1673 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.73-37"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.73-37/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9ae7d8de964eeae8204acfe0ff2861f591cf82c9e95c61360c82d098f5a6f998"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.73-37/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8ec17ee0bcdcd78bd8d3d33afd4d94142cf26d5437d4c4b4e831d4f0a30d0f7d"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.73-37/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ea44548fe90716d17d22a6051e560b53e50d42786fb7a2c27c29a9fb7d7dbeea"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.73-37/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "20063a5c5bb50e0a65dec245e8d94ae2d121a2bab4be8d91c81fb1d531f9f584"

      def install
        bin.install "cdctl"
      end
    end
  end
end
