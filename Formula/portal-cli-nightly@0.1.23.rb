class PortalCliNightlyAT0123 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.23-31"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.23-31/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e94498ea6e85e6547dd6e81069478f5c71b84c734a08d901876840afaef3d98f"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.23-31/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4ebe2f5a755f48a6c0db94a0ea9cc45fecde242bfb93691aafe1a772446efdbb"

      def install
        bin.install "portal"
      end
    end
  end
end
