class PortalCliNightlyAT0120 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.20-27"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.20-27/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "332c9253d70a54e5ef97a0e5702ad119436dc256b1be2cb9aae4771f3a3bc49c"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.20-27/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d2aed00e245d4d7c4046bece31dde45edf197ba0c3ee745501672b023ef3b3e4"

      def install
        bin.install "portal"
      end
    end
  end
end
