class Aap < Formula
  desc "Agentic AI Platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.3"
  depends_on "bucketplace/platform/mortar"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.3/aap_0.0.3_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "79ac51cb3710e999d9465cfa2040aa0f119b3e1a039dbe16641cf0e198938d13"

      def install
        bin.install "aap"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.3/aap_0.0.3_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "afb399bb951be57307e593c9c746f62f4019d43fbf507be5439195b21bb4c5fd"

      def install
        bin.install "aap"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.3/aap_0.0.3_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "965c2b43e54bdf1ba5bd3529cc71ab8f958673a9028a4eadef056f02890cee30"

      def install
        bin.install "aap"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.3/aap_0.0.3_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6ca605f21a2e7a1c06359f0ea0e25e42bd003620c4b4266a7f72208cb5e093a7"

      def install
        bin.install "aap"
      end
    end
  end
end
