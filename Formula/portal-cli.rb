class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.15"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.15/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "edc947485e5b94be1c0c8cb131c09eab195b9b29847eef7c8c3e88fb600f040d"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.15/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1699a5da985d2ae934576b29152e090095de68c9c5aea80f143aabef06cfd082"

      def install
        bin.install "portal"
      end
    end
  end
end
