class AapAT00 < Formula
  desc "Agentic AI Platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.2"
  depends_on "bucketplace/platform/mortar"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.2/aap_0.0.2_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d026c561ff7f7ae08919a839d8cdb2985f777871969a478a2589e53c3e1514a3"

      def install
        bin.install "aap"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.2/aap_0.0.2_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2897d5f0378251a53ff8610d4b67603190975695328dc83fbd953803f33987bf"

      def install
        bin.install "aap"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.2/aap_0.0.2_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "cf2e90bfe64b740656f480418110d0c6f0fe175c05c4deafe4278578fda2316c"

      def install
        bin.install "aap"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.2/aap_0.0.2_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ec43ca6792a70a5703123d2adc3fbfefc933fab06633dc00f22d9b2abdff5f89"

      def install
        bin.install "aap"
      end
    end
  end
end
