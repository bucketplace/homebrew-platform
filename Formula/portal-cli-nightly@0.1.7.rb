class PortalCliNightlyAT017 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.7-14"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.7-14/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "524222670e63062ffae451cfed8f2b8c35f35204ef5232898fac82cca58870c5"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.7-14/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b628d5a7cac6c68a52a9f1081e158e98a7270fb441c89f382e14bf79bd0d0a77"

      def install
        bin.install "portal"
      end
    end
  end
end
