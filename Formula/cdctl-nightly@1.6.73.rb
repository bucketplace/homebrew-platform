class CdctlNightlyAT1673 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.73-35"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.73-35/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "745f30305128dc2bff50485a79ff0763b62c0b937efbfa516d1c1144aacba9cd"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.73-35/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1e618189223fef2c43af8ec575f3404eccb386377b11ea34e400fff0952664a5"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.73-35/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1f9248d0967a752ea8007b6d05e12c9047283e2692067ebc49a6bd8efe28d688"

      def install
        bin.install "cdctl"
      end
    end
  end
end
