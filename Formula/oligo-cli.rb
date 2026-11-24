class OligoCli < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.18"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.18/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2a573a73559b21e57aea99b7c81bcfa5572068eea165fa7ab846ef31d9c14b51"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.18/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "846406b3d84a4db2e525a4a57e137de6770ab395f608beadbda50bc4132c01bb"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.18/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8df197527f00ce3f6480f4902003ba5d8981d07ae328a78d660c488806303996"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.18/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c9a70950c4b5134925d98c5c6503d02c26773c137552b5cedfce7811491100af"

      def install
        bin.install "oligo"
      end
    end
  end
end
