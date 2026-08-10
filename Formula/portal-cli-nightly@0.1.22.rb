class PortalCliNightlyAT0122 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.22-30"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.22-30/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6f7651d34b4ebb2ad0378d980927e45cc5f4fbef9830c63265356fecc9a38941"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.22-30/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "cfb304cbdbb4c8079444c38c23e9024721dadb51dd172d1f974419bc2ace65c1"

      def install
        bin.install "portal"
      end
    end
  end
end
