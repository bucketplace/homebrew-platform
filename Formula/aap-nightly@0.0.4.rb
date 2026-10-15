class AapNightlyAT004 < Formula
  desc "Agentic AI Platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.4-8"
  depends_on "bucketplace/platform/mortar"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-8/aap_0.0.4-8_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5e2cab130bce2f6099e45d8f9b6a917777800b6fd4171b95e92832e5233a2ef8"

      def install
        bin.install "aap"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-8/aap_0.0.4-8_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bcb1e1c725840f9967b5a5e9a50a4253afeceebc85b5ad22b6e0fac49dbac800"

      def install
        bin.install "aap"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-8/aap_0.0.4-8_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "32189a1ca99c90ddf44cdab2b1b88aa6cbffc5fec19137d964c1258db7e396d4"

      def install
        bin.install "aap"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-8/aap_0.0.4-8_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b97d3549b1e3ef31bc1a68c4c3cec539ceac423b4debd75c61b87686fda7b06d"

      def install
        bin.install "aap"
      end
    end
  end
end
