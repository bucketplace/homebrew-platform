class OligoCli < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.22"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.22/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fb6413bbf2d2b1fdc487544ce81c6915a8f945f52a6af7c310e23486be796dd8"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.22/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9274746662b181531ab23af9545596e9b77e8095999df7a453a15798dd9a6a11"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.22/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a7c9e8466378d5a61b4e5b5e13f4adab3c7da4fbbdfeb2ca53a25ad0e67c948c"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.22/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3be7357d80db02eba8ef131c76ff082619cac3704a6cfc2eca34eaf595c6909e"

      def install
        bin.install "oligo"
      end
    end
  end
end
