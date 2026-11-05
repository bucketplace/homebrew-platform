class AapNightly < Formula
  desc "Agentic AI Platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.5-12"
  depends_on "bucketplace/platform/mortar"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.5-12/aap_0.0.5-12_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4e816f20e02a25e2e04fdaab40921407ade7b74d0bc5a65f040408070a7a4b51"

      def install
        bin.install "aap"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.5-12/aap_0.0.5-12_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5dc51e58fa00fc1fb28e612e0ba524877911b5a8b6ec20e6dbb9ee21c065490c"

      def install
        bin.install "aap"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.5-12/aap_0.0.5-12_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "397b8d1bbc352ceaddf9f27133581b0fa9df1b452a985a0c5b7c4f3b47861c89"

      def install
        bin.install "aap"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.5-12/aap_0.0.5-12_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4bdb8231663a732882e45384d4b615561ac3e7247bd7d17f2a74de7a0dcfce4f"

      def install
        bin.install "aap"
      end
    end
  end
end
