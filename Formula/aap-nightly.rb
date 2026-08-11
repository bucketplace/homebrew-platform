class AapNightly < Formula
  desc "Agentic AI Platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.0-1"
  depends_on "bucketplace/platform/mortar"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.0-1/aap_0.0.0-1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ff82e22edea1783c7eddba2368884d9bf7feb660d1747d520ae20e9523cf9e7f"

      def install
        bin.install "aap"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.0-1/aap_0.0.0-1_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e4dcdd763f14a502899a90d5a065bd8bbe648baa57dd4cf8073f6c01ccaf0657"

      def install
        bin.install "aap"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.0-1/aap_0.0.0-1_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6814de2690a8a24f3974985540cb2712ef6c19baae052b1a31d604f0aa1125f1"

      def install
        bin.install "aap"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.0-1/aap_0.0.0-1_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "cfa8d17f408603aa2619fd005ffb09185cbf636ba9d455207e9f0b2dbddc295b"

      def install
        bin.install "aap"
      end
    end
  end
end
