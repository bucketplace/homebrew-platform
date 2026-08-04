class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.18"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.18/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "191106d38a30165b3b29e11152dfd1b6fe37294d471be87daf8afede4ef0d2c6"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.18/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "42cd40054991e25352b3736f8a54d3ba9478ffed0dc5af43e40f6d64f94ab6a8"

      def install
        bin.install "portal"
      end
    end
  end
end
