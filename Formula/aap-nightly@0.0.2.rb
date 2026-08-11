class AapNightlyAT002 < Formula
  desc "Agentic AI Platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.2-3"
  depends_on "bucketplace/platform/mortar"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.2-3/aap_0.0.2-3_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6064a419834fbf9c938672dad4c51c4957ccbb5f72be30e1c144ea223124ad43"

      def install
        bin.install "aap"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.2-3/aap_0.0.2-3_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3c99b0b1d20ff3c312f3a89bd9430c5b69a080cd7063b9907bbfff8b7188d743"

      def install
        bin.install "aap"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.2-3/aap_0.0.2-3_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "416681b52870160f982ca0e12a77aaa9ea048ac0e181aaf533502890652686c7"

      def install
        bin.install "aap"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.2-3/aap_0.0.2-3_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c43319a0fc065603dd1c550b1163601373338f4b0bddaf7180a92bf4d8f3fa4d"

      def install
        bin.install "aap"
      end
    end
  end
end
