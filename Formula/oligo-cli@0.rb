class OligoCliAT0 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.9"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.9/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "659c5ee527608f10bd05f4bee2cde840be32023ee0e6cac080f546659aa4248f"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.9/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d3deb8927e06977e9a0d7999ce84bfaa86ac8f94e1e5fbc4c4aabcc3dcc57d1a"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.9/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "953983b355f712847de2824d28e9a2ab9e9856cee766bf773097cde1e8d01378"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.9/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e29acd996b5b9ac4a8766fd8d0c96f63cb406cb006b92e3d3a870f0a5437d601"

      def install
        bin.install "oligo"
      end
    end
  end
end
