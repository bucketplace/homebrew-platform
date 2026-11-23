class OligoCliAT01 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.14"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.14/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ecfea8feb0624afcde8e281061c0e55709ff162d97726acc4c3760ef8b0e908b"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.14/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f671601551420f906ad952c2fae06543d1c4f2f2af9949b93134597bc95ee9d8"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.14/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "605227abc291a6e1c47ac3ac569e3e492b5baa6c95e51dd4a59883e0ec1c57a1"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.14/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "07658cf740ab8bb923a164fbcb20eb7372f17789ff609ed4961ba4a1c4180c6a"

      def install
        bin.install "oligo"
      end
    end
  end
end
