class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.22"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.22/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0764974c084a378e73cd87500c75fad70f77aa0b25d2b6c804e05dfb47410e7e"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.22/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b2073cdc6a3aa3567da5d0e011cc3d6c98ed29484f0ce1b8cd81e65651ffdabe"

      def install
        bin.install "portal"
      end
    end
  end
end
