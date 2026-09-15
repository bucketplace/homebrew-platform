class PortalCliNightlyAT0121 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.21-29"

  # Keep a base download so Homebrew can load metadata on unsupported systems.
  url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.21-29/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
  sha256 "1610574ed444634ad091ee260a1a55aaec2720cb87188621957177cdbf6da7ea"
  depends_on :macos

  on_macos do
    on_arm do
      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.21-29/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "cfb20b4a6a04f39bca17b2984fe73d5fdd7382ddad679b390cef72a29108a3f6"

      def install
        bin.install "portal"
      end
    end
  end
end
