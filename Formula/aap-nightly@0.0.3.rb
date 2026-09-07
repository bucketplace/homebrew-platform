class AapNightlyAT003 < Formula
  desc "Agentic AI Platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.3-4"
  depends_on "bucketplace/platform/mortar"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.3-4/aap_0.0.3-4_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0db0cdac788bfb2c6756356d147d585fd67f1d1c99723637784aefb6c7c283be"

      def install
        bin.install "aap"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.3-4/aap_0.0.3-4_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f889548408c0232026f292b84c637ad2a9a6cf5802f3981697f753301a55ad98"

      def install
        bin.install "aap"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.3-4/aap_0.0.3-4_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e1b7aabde57f3386d28edf8a31ab70ef35ac1072d1cb8490d15ddae88591c057"

      def install
        bin.install "aap"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.3-4/aap_0.0.3-4_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5765852d44ab224508aa46d73c6a86b23e3186ae7c5116dc3e97d2a13b1959a3"

      def install
        bin.install "aap"
      end
    end
  end
end
