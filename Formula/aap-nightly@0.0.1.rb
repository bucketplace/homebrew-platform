class AapNightlyAT001 < Formula
  desc "Agentic AI Platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.1-2"
  depends_on "bucketplace/platform/mortar"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.1-2/aap_0.0.1-2_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "66619a75cfb1aaf01b01a7ad6f1e67702a923e98c36b3cecafea4191a4499970"

      def install
        bin.install "aap"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.1-2/aap_0.0.1-2_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "57fe8e1b877ad23a6fabc8769864f447364a2952de97c1353f64e4773c0845be"

      def install
        bin.install "aap"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.1-2/aap_0.0.1-2_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "58dc6a932adbd130a37d6bcb7c9bf19d0f7115506b7479a2f2bad9687fdc641c"

      def install
        bin.install "aap"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.1-2/aap_0.0.1-2_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "426f69b64483487d5d1a1f967c28f53ce81ab2d24f15f5a599bed644343c5fbb"

      def install
        bin.install "aap"
      end
    end
  end
end
