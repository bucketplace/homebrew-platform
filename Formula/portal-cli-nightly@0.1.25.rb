class PortalCliNightlyAT0125 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.25-33"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.25-33/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3f4bc613360e33d2e9aa7efebfc5ddc9597aefeaf06c64b4cb397a2c9731ea52"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.25-33/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b8eaf2677f8ac693658df0a8eed6941d4754d9aeacbff60bf940e364a46d8bf2"

      def install
        bin.install "portal"
      end
    end
  end
end
