class OligoCliAT0 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.8"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.8/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "71fe99a7f9adfa27d24d11f95fc2a3ed0b2e2308cf6c689fb4c23b76ca927403"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.8/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "250962fe5769bf90307fccb702ddb4db50f007e04c198a7805f91d3ad924e55e"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.8/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6c1a2ea946db01ebc4b37b7cd07f8de47ecc507fb30025f2e967670f4d99d734"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.8/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "bd7217d4e5363e0d82870c21f2515b5616fc9733434fa15a8d7ac02cbde6648c"

      def install
        bin.install "oligo"
      end
    end
  end
end
