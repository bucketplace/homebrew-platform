class CdctlAT1 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.82"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.82/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b926e2324c73128bd53ab5f15942b49189d7d394b19629b568cc077375cffffe"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.82/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "08c3f96929ec5a284a87a67669061f644414872af612865b7a290358b9974fc8"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.82/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "aedbac32a8f49ccb71f1bec858544cbe553d38194c863b415b7568160b0c4ab6"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.82/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "267e670607a37785dbd9e6b4da00986d4f6112471f0c5995444a0a58cfd6215f"

      def install
        bin.install "cdctl"
      end
    end
  end
end
