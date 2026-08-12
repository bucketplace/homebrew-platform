class PortalCliNightlyAT0124 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.24-32"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.24-32/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1f7d58df545f4a452285a0bd5af8dfa1ca92492f6588c7df68798cfc82b38ec4"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.24-32/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0f892ef6f4f716fcda97abf9c57a74d43c9d8cd35e31a1749746b80a908f6265"

      def install
        bin.install "portal"
      end
    end
  end
end
