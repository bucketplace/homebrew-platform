class AapNightlyAT004 < Formula
  desc "Agentic AI Platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.4-11"
  depends_on "bucketplace/platform/mortar"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-11/aap_0.0.4-11_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "de698b92de0136b58bc979c687091c437332646d664a1b5bf6e67ca26b7eea72"

      def install
        bin.install "aap"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-11/aap_0.0.4-11_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f4c97e8cb90709c3f17ea2d9923357762693629f0aff33a23b740903fb2790f2"

      def install
        bin.install "aap"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-11/aap_0.0.4-11_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5a7e0919433c9d027bd16220aa6bb28d71879da59d58774198ad8c8ebd9dc27f"

      def install
        bin.install "aap"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-11/aap_0.0.4-11_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "215d6d19a740301d05ec9b722a3e6483004d361f39ae6861d550b4ed6c2b41c1"

      def install
        bin.install "aap"
      end
    end
  end
end
