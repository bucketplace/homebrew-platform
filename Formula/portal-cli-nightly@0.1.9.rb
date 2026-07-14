class PortalCliNightlyAT019 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.9-16"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.9-16/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "eaad30a2f878b5f83794d433d13f859998d2a4974eadb3d5e59ed3a6a6b871ce"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.9-16/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d32e541c0c3fd7e2fb3475878cc8426c531bb5e7afc7721fa7b8d68eaf66fb94"

      def install
        bin.install "portal"
      end
    end
  end
end
