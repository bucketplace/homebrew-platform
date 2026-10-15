class AapNightlyAT004 < Formula
  desc "Agentic AI Platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.4-7"
  depends_on "bucketplace/platform/mortar"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-7/aap_0.0.4-7_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8ff1eb1ed6898bf8e78a8d5d449eeef39cf374e18a7b040f03a2f78a228c5104"

      def install
        bin.install "aap"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-7/aap_0.0.4-7_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2a09dece5ba40d25ea5b20f140995360f047e60d466622d8dab1a2e251aa6755"

      def install
        bin.install "aap"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-7/aap_0.0.4-7_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2a10252f78d3fe4abcccef11de0bf26a8b685d81a8597814d7a45785084839e0"

      def install
        bin.install "aap"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-7/aap_0.0.4-7_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0d993dedb97352a25ba75d7f80ee12c18103acaae82424f640ee20c73bedf991"

      def install
        bin.install "aap"
      end
    end
  end
end
