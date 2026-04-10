class PortalCliNightlyAT013 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.3-10"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3-10/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4b38d6ee0dcb923a9ad2ef2b5a216c32d46ca3d5b9a2ea3d8721287569b6f231"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3-10/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1524aac7fccb34ceeabcb628b4e431fa4c581e2f41a21957cb9a39f1025900c1"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3-10/portal-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4196e718cfc0bbf59ea31e806175e245b8087791c52349c017687e25f394ad0f"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3-10/portal-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d310e5ac518e934aeba0898978a3d137e38c6197b1465858e2c1c87c8f9acba1"

      def install
        bin.install "portal"
      end
    end
  end
end
