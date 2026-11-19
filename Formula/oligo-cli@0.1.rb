class OligoCliAT01 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.11"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.11/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1ace4aa60655402eee82b7366df3b3b9edb92d6b46b079186610433412d30224"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.11/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2bd610ebd9161c4ebf2f9a85d843bad66b31e8b160bec2348240c23bdc73422d"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.11/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "022b8826912e6035774c8539b5ef6583736fb8393260ab5e7a42eb7fd7abee1f"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.11/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7bdfaa4a5b3a941dc119b7ffcde917a256425509b55b067549b0c60d4945866a"

      def install
        bin.install "oligo"
      end
    end
  end
end
