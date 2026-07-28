class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.17"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.17/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "85ad04e34b33f4229ad536bdf3886e8b11c2a7d21f5b57c518c99277f650e311"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.17/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "98885278fd78fd814629ed4590d1038c79dcd15da5a4dc275dcb7488405cfdf3"

      def install
        bin.install "portal"
      end
    end
  end
end
