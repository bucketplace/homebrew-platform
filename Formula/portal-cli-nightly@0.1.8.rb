class PortalCliNightlyAT018 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.8-15"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.8-15/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4ec60f9d4b1c8bbcf751356900bb13e5cd60b6667d00e1e2923701804abe1ece"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.8-15/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2c860c44c8ff51ea984ad7c35ce55e926ff7d17953fb8f85ee62de04c2d584c4"

      def install
        bin.install "portal"
      end
    end
  end
end
