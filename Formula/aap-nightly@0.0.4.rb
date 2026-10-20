class AapNightlyAT004 < Formula
  desc "Agentic AI Platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.4-10"
  depends_on "bucketplace/platform/mortar"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-10/aap_0.0.4-10_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "863e497b7180e9df6dc3d7960707b769f1eba88ec7991203c04e4f2281600071"

      def install
        bin.install "aap"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-10/aap_0.0.4-10_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6656735e12af3069c88f68e178566d28a7b85fa4cf693b0e42064ddcabccfcbf"

      def install
        bin.install "aap"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-10/aap_0.0.4-10_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "87fd06e553c5eeeb2b94f45e4e03838900519319a184de872faf9cb9542786fa"

      def install
        bin.install "aap"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-10/aap_0.0.4-10_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5f7c7353c855778e9966c9d5e388d88b5978db20908bb1e8e3a6116ad8ca37cd"

      def install
        bin.install "aap"
      end
    end
  end
end
