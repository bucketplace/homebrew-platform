class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.21"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.21/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "28874297806ac43e1f80db7ec36f9707cb735524383c4d8ae308e613f2d3c752"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.21/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3c8cc5efbc303c241ee5f2d3564b394a6a5131032a9b5ff271b851b9c3e1e126"

      def install
        bin.install "portal"
      end
    end
  end
end
