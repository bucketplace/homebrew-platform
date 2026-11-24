class OligoCli < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.19"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.19/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "bb7562f3430cfff2850a3edab5bd80b5760c1188499251464cc86b237b11937f"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.19/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7381bbcb6ff10e52a5510677abdd8bf60c2ee637d00673c24a355546de8687f1"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.19/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "dd5e45559dfdbf3df1b8bc719e8ef9b187dd3301f3a9be1be50e2ee43469a35a"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.19/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c258c30f1abf64d7e5ffc076a978f22c2d4b939a0846b646b2a54c784d768a58"

      def install
        bin.install "oligo"
      end
    end
  end
end
