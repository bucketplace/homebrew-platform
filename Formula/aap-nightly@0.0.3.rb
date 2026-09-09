class AapNightlyAT003 < Formula
  desc "Agentic AI Platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.3-5"
  depends_on "bucketplace/platform/mortar"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.3-5/aap_0.0.3-5_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "747b3a907805ed0fb6477d3880c4757b62ed5c3d5c3fa6c2272bcdb078ed8709"

      def install
        bin.install "aap"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.3-5/aap_0.0.3-5_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e204c2e875c5a06c0de15618c1d108b9302c1bc1e24671c552b66f41cc25bea4"

      def install
        bin.install "aap"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.3-5/aap_0.0.3-5_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "652a97684a6c76a3528ce48bf92425f4f70bd690812a3c09fecc511eb1acbdb4"

      def install
        bin.install "aap"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.3-5/aap_0.0.3-5_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "65676eb0c2148990b5b7680cd57e7a22ca7b0280ee72d5a68f4c7860d147d89d"

      def install
        bin.install "aap"
      end
    end
  end
end
