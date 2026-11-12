class OligoCli < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.4/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5a338a112683b7516e45fab91ef7ae5e0c75f06865cf4a8a506bfe9aca56590a"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.4/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5a34e7796e632e952766290b67c56af2b755295eae5400008237073b34ef8855"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.4/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a21586e79d3edb527d34d58da173839900988e4d3e078fbb0e2d977bf195e04a"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.4/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3a8962dd28727c34466a740cdadbb7337cde3c4a423a9476493aa1406ec1b666"

      def install
        bin.install "oligo"
      end
    end
  end
end
