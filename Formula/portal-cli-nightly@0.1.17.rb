class PortalCliNightlyAT0117 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.17-21"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.17-21/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "572633850e9f179cecd7e47f4e5ca5a9352d9e679b41f04685f86129ce810ef7"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.17-21/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3e6eb38233916619d7afd2c45cdb66e9f28155bf2e75c3ec70f7c8504e331e97"

      def install
        bin.install "portal"
      end
    end
  end
end
