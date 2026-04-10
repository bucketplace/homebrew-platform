class PortalCliNightlyAT0_1_1 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.1-8"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.1-8/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5750c0af0dbbd2946cb281975f05c81203858ab2d4490ce4e92bc26c4ac56ce9"

      def install
        bin.install "portal.exe"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.1-8/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bf8022e3fe0a4b486537796215edf1ef1474a09c318a3994aea41ca50c3d6d36"

      def install
        bin.install "portal.exe"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.1-8/portal-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7af540844de12412242f02a9d866e47b65657fe4be6d9401ae6a11d7add779d1"

      def install
        bin.install "portal.exe"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.1-8/portal-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "dd6e90b19560aca5d0db16e4afa7c768e03c9f75f2f1fa918cbe15765e3a2620"

      def install
        bin.install "portal.exe"
      end
    end
  end
end
