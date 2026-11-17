class OligoCliNightlyAT019 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.9-20"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.9-20/oligo-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2678fa35e1c90026cc66b47b1b1d3d265338e4cb3e18585e8df85def89c0d476"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.9-20/oligo-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "37f058f43a1aee37fc36c32367f900c20f5422cfe5d961f20e1d20a8ae043f7d"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.9-20/oligo-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8953790ae973c0b928306149f6a9cba946099453f4ec6b4e4098c77123ce6ec9"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.9-20/oligo-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "301243402dc706f5c613e45ef893a9c6b0ed32aa0000b758f8ea2fd2af913552"

      def install
        bin.install "oligo"
      end
    end
  end
end
