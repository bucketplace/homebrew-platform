class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.23"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.23/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "53c6fbd1715f3eaa47679f8f137e7d2cfe6293719fda9e78cc1116494e3d87e8"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.23/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e5b7f0a79343baa4e643624ea475fc4b11e67487eb766a82da63bf607e28c30c"

      def install
        bin.install "portal"
      end
    end
  end
end
