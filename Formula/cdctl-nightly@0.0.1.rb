class CdctlNightlyAT0_0_1 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "0.0.1-15"
  depends_on "awscli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-15/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "81d12e4b0ca3074fffb32c756a532110926d68f74344ba9a1ac790ab569f3e7f"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-15/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1784f54c007912cbb2c40759e60c95ecbf5290d9888e47ad35dd92513893e9b2"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-15/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0e10ff13fd6ccc8b9c35a40a94047417a83fb70275ed12982c18e26566be6fe9"

      def install
        bin.install "cdctl"
      end
    end
  end
end
