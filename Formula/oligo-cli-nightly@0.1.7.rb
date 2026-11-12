class OligoCliNightlyAT017 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.7-14"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.7-14/oligo-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "dd52df2971624bd5f1e4365218f6107c84647a7591069886868175fd9e4459b0"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.7-14/oligo-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "40769ff3dd34cc9c11b365a40c11615c87fdb03e18fd610933a3049d81af1969"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.7-14/oligo-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5e9faab4d86cffe362bdc4925523b571f7c1dd1c39c0cb01780e7373d4f415b6"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.7-14/oligo-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "104cc61acf3b06ff74d5fa7855abad08089871f5593f3a235249cd7e56ca3c1f"

      def install
        bin.install "oligo"
      end
    end
  end
end
