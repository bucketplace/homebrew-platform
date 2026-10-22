class AapAT0 < Formula
  desc "Agentic AI Platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.4"
  depends_on "bucketplace/platform/mortar"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4/aap_0.0.4_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d77522608ffb85970e1d2d59c466e0fe68a2d0e7a9d6be0f298d64dffd62cf8e"

      def install
        bin.install "aap"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4/aap_0.0.4_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "090ac2a854a6d001e39682e5a7cedca844dd9dd3660a2aed29d322ecf8f8f783"

      def install
        bin.install "aap"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4/aap_0.0.4_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "360125dce2e529bf6abfa61deca266f189919c8ee747733aa4893563da18d533"

      def install
        bin.install "aap"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4/aap_0.0.4_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5cd6b820b37cabb1a696412d46f202969be927d83a0255c3dbd8459e417f69ad"

      def install
        bin.install "aap"
      end
    end
  end
end
