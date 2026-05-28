class CdctlNightlyAT101 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.1-12"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-12/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "11875f3f9d26911c63f477c318335ff27a1e7281017a6e238aad43f2a65e5751"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-12/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2a1a9442a069ce907fa68c89f2894be0540ff3d96e225124a30616bbf84957bc"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-12/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "defae6993e4af56e03671e317ea20acde302480568083e7f86acc2860083ada1"

      def install
        bin.install "cdctl"
      end
    end
  end
end
