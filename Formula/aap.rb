class Aap < Formula
  desc "Agentic AI Platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.0"
  depends_on "bucketplace/platform/mortar"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.0/aap_0.0.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0d1398f6bc8d9c27a69d5900470c4efc982a926e3e836551f5cc39f7a1e5a983"

      def install
        bin.install "aap"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.0/aap_0.0.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f44a0084068a6b4c0fe14ef2e7146aa114af31558c48315ca9b7d26a849dd8fa"

      def install
        bin.install "aap"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.0/aap_0.0.0_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a04bfa7522f6e2355c54deb8a2e6fa0c12ae22e81fcdc42e630ad483ade4aa98"

      def install
        bin.install "aap"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.0/aap_0.0.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2d1a531ee21abc2e4873a1041ff664b9cf27c60fa855d0bb419ff88cc4209006"

      def install
        bin.install "aap"
      end
    end
  end
end
