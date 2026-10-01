class CdctlAT1 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.78"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.78/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "eca176c7477a5c30278ecb125d08d7d835bb5dcb235f1b845634989f6e976ca5"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.78/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "efb998a34600c4da35d405f3f07c8a92ac04bae93dbb69620dd7bcb2c56be20d"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.78/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a413c4891ac4368d9842d4795f78eaf6ab54a2c2f7f44233241b449de4183907"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.78/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6378901b7386ff9295a547b3a5670079e6542ac6c86fe8f0c97e18eef26e0ea9"

      def install
        bin.install "cdctl"
      end
    end
  end
end
