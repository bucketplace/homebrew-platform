class OligoCliAT0 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.24"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.24/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "95a4cc0f8fb38888b9120419a72ec9154c9e6a658496f03a0d32405db3e604b0"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.24/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "14347f88abdbb7f4cabd39fda63d2f639c76a69bdd413e16cab11ebd9f62ab0a"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.24/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "79e2cb5ad8a491bfdc7742331b404020a5175e79f3dc397572ced33664e613a4"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.24/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d4e99ecaac8df878351017e2469cf2e36c819a714be1cdc244c8ed9bfb30a5e5"

      def install
        bin.install "oligo"
      end
    end
  end
end
