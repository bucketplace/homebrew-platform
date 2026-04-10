class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.2-9"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0df1bc2d44a4987a1f6fe1b4ea34d848a7a10dfd2f50f3b3b6b0a56d19e7d048"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3ff6991fb1a0424981c78141723be4f9c84a6f13f35ae0a0a748aad6fbbe2f83"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7cd9e2926ba07b42c41fc8c15cdae478e25b956be397ee2ed0cfe3cf19f27a40"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "31779bfda5d3efe66acdedf4f17cb8cbb182d9e083dddfa09eaf26af4de26fe3"

      def install
        bin.install "portal"
      end
    end
  end
end
