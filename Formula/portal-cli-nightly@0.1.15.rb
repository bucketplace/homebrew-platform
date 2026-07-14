class PortalCliNightlyAT0115 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.15-19"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.15-19/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "29a562e087f4a96c829fbed1224f35d3e8d8047613a0ae55756476ab0f7e0dca"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.15-19/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a440aec6c3b81b8f06cd90e1382d1913c1416344335de4d627a95aab64fd5d24"

      def install
        bin.install "portal"
      end
    end
  end
end
