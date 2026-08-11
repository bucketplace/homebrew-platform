class AapAT0 < Formula
  desc "Agentic AI Platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.1"
  depends_on "bucketplace/platform/mortar"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.1/aap_0.0.1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f7952e07008c721666ee37da19cf431a8c255f9fb76ec45bdbbf8cc98f6294b4"

      def install
        bin.install "aap"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.1/aap_0.0.1_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "244b2ff76328409866e095c4d969316a63bf98eb2ad4e369da61492912b0378b"

      def install
        bin.install "aap"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.1/aap_0.0.1_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "730ff3595eded6c5248064ed710439d548fa024425a8cf200a4b9cc03d1d0a5b"

      def install
        bin.install "aap"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.1/aap_0.0.1_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7a71b1d6d0bf30838b9cbfb92947daf68260000e0e61902abc5998128f2242a7"

      def install
        bin.install "aap"
      end
    end
  end
end
