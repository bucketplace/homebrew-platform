class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.7/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "452aa40215baac330ddcb513644f9575d83258c88a9b316917f059a05c0f24e2"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.7/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4ee0da5a8a4de7ae8e9e46d2875b817f6c763ec62879e586a7c9f7edb85bf525"

      def install
        bin.install "portal"
      end
    end
  end
end
