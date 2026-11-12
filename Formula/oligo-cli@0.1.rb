class OligoCliAT01 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.5/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8a1653dc750a8f0a785c606058ab7bf566406e25685346922403041ad1360d19"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.5/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "aebcff2aa62be7f6bb4fde175be9579f3efd4836158a9252711b9e8e7e13323f"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.5/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0e955b384697b7fb87e6f50f60a34cfec33a69e27a4abe45b5e4fc34379477f7"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.5/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ab6a8c351c567fd5a6fdde2feb9ff0ce5a781fe511318551d22ade84a324ba2a"

      def install
        bin.install "oligo"
      end
    end
  end
end
