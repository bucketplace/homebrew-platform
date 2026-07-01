class OrcheckNightlyAT002 < Formula
  desc "OpenRouter Usage check CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.2-4"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.2-4/orcheck_0.0.2-4_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "78e7557aba90a27db5d30a6d13353df7c61d735d0fef76ba2771ad5257efd981"

      def install
        bin.install "orcheck"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.2-4/orcheck_0.0.2-4_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d1a651de015d7ce59386a9ccf7b8cb18dd53be924c821dd7a16cf2b03bd8ec1d"

      def install
        bin.install "orcheck"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.2-4/orcheck_0.0.2-4_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2d54f36371edff32480574820aa57af498044424bf36cbdae7b2fee697962aa8"

      def install
        bin.install "orcheck"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.2-4/orcheck_0.0.2-4_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e8fea3c03b07cdaa1301e5e6865e705cdf181fee6ad238d8a58d6c4fc6e83e5b"

      def install
        bin.install "orcheck"
      end
    end
  end
end
