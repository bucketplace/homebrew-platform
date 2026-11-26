class OligoCli < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.27"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.27/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c8a415e5cd586d65357d2b687b94d95cea9876216ce2f350b6dcae5d77ab6ab4"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.27/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "34306f632f48d8aed70a9747918c4f038b3a14a4a05643fa594b502b7eb4fab7"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.27/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a5723e9356602eb700aee53ff5fa301f11d9f11e55d4f94bbee7ff79ad972c24"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.27/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "96c90fa0770c3ad644c003588e957093f161b7a9cabe9f55cdbb37cf73075e1b"

      def install
        bin.install "oligo"
      end
    end
  end
end
