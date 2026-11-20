class OligoCli < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.12"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.12/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9b324df7ef983a6846c7bf3a26df5577f28e02028455918c99e28b392c0f212a"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.12/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c840b8dae14c32d163703ddbcc0ab91b195797c0b5ef1ae6c619fbda276f6f72"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.12/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d2769ac3266ba1cb01395300a14d77935d44f772057ab4b1563564844003a44d"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.12/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "55cea1e00da3c51fb2f1fc397ffc0867ff821dea316f0182dc2fb619eb0a4807"

      def install
        bin.install "oligo"
      end
    end
  end
end
