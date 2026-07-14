class PortalCliNightlyAT0115 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.15-18"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.15-18/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5006632168e593d3d235f5e8be9bf9a215124a6efb3a7c97a8d66dcb4608ede2"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.15-18/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ddab0d584280ac7297619f28a7806a69cfa4ad9a31e1a913ba88a944ebc1b7c3"

      def install
        bin.install "portal"
      end
    end
  end
end
