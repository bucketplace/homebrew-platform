class PortalCliNightlyAT0119 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.19-25"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.19-25/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "525e44015c80d62f5556a3f87af528b425f301c9e0b9e2e151cabc3135f0f801"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.19-25/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e58728f7d39e2643fcfce6d2ae27aec1cf4072f2bcf2476a59bbbe8cd97a4bfc"

      def install
        bin.install "portal"
      end
    end
  end
end
