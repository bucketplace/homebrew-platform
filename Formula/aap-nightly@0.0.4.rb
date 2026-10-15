class AapNightlyAT004 < Formula
  desc "Agentic AI Platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.4-6"
  depends_on "bucketplace/platform/mortar"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-6/aap_0.0.4-6_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "bf019a88109b73d6096e7433bce3b89d4ad2e17a28846d6272af996dc2ca99f5"

      def install
        bin.install "aap"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-6/aap_0.0.4-6_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "fd8453b4add051447de2611c15d959d6d47d8a7281ccabde1608832f2d61a6fd"

      def install
        bin.install "aap"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-6/aap_0.0.4-6_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1bddb7fccb5bb15661f83081aaafa1351b5f639384923d8edd1d06e62e7a6811"

      def install
        bin.install "aap"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-6/aap_0.0.4-6_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "61d62fbbfa8ba7876f186ea52985a3fefabfb8a78bc4e2f43c4b2675cea8449b"

      def install
        bin.install "aap"
      end
    end
  end
end
