class PortalCliNightlyAT0119 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.19-24"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.19-24/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3d878c05bc1a9089692e5c2db84b67c19b9b1aef37d1365c74ad7e99fe3853f5"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.19-24/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a0c69e27b0fa584ac5560923655d61ec8fb13c367e2786c9aefb6fd1c0fcbe51"

      def install
        bin.install "portal"
      end
    end
  end
end
