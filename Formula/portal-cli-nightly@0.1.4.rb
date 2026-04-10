class PortalCliNightlyAT014 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.4-11"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.4-11/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fa80994722e04e43f75b7bc89949789fb22bf0dc318a1774ca411230cd3dbb06"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.4-11/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6414f89a6cecbb3507a687b0c64f46cd5839d1aadbc1a2dc807b8e48c01244f5"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.4-11/portal-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ee1d6b79c212e35e04a9a82725d3b8c54849ec41c51ea57d6c20a1e33d29b160"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.4-11/portal-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "dc237a83e8db4c31c51000664c39e14ca2368a7f533dbfe62f262451e15a0c27"

      def install
        bin.install "portal"
      end
    end
  end
end
