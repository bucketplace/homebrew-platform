class OligoCli < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.3/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "917870a7a16f6e2a8281588f02110910d5bd6acdf59a9eb4d247e96ead16dabf"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.3/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7cfa34913af9cd4e11495412ffb0f74dfd69bffe9aa0e9b318f0500e31b616f2"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.3/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "38a0251992b7f40d5d6882031b5405b8e24957434346e834b669fbd15c1c56c5"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.3/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c32e0c5914971292f7d257c691d8c12d0f6e40c9967616f92335741d428a896f"

      def install
        bin.install "oligo"
      end
    end
  end
end
