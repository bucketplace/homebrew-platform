class OligoCliAT0 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.0/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e683bf44c33552b5c72355e56617fbd30aed14c24bb18086726f8ac10a8a9bc3"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.0/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "17c3ef0ae249e5f83460c40785a539a6049a671844e3dad9cf5d4dbd620df439"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.0/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8c0c22885d11ebc5241786156c1745d5ab9071a61f6813a5b12e917122d6d841"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.0/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "038518d941cc569d5596264937329b4fc1539b0cdc5fce3e727478f77c5e34dd"

      def install
        bin.install "oligo"
      end
    end
  end
end
