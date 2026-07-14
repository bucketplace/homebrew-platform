class PortalCliNightlyAT0116 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.16-20"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.16-20/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3b764691a4e7cacd91f66222751bd8a8216786d1ac9b6d16309bc187621dfdda"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.16-20/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f0a53576b60a1e7cab3487ecb6a6d2442dd0104c1b2e0df1fd138998474941fd"

      def install
        bin.install "portal"
      end
    end
  end
end
