class OligoCliAT01 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.16"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.16/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "cf55a84a29fe3fb8ea6a3b8f1578514816334faf494d57683150598562d1bbda"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.16/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0f0b753edee41a3b5d28951ba1ecd8de41d854e27b7c577e831c4d92c92ab871"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.16/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7bd4c70a6413b9c5d7804435059a9b69e2c362b9c939f6f09d468300566ccb35"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.16/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "608ead53c01729e362e62e51a91f7f9b1a30414c5b548703f0926a927ab966e7"

      def install
        bin.install "oligo"
      end
    end
  end
end
