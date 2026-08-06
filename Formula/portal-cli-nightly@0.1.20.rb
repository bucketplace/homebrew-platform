class PortalCliNightlyAT0120 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.20-28"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.20-28/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ce90fecb9711b3632a0c4d93652fbc997553758a0219ff2a7df399be916d9a15"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.20-28/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "285afe629ad0ccebf21889975805c21d7d630bab09eaf2f08f3653f9e6391407"

      def install
        bin.install "portal"
      end
    end
  end
end
