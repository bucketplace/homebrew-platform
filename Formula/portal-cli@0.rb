class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.28"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.28/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "55377697c0eebd361de9f5d0ac2caeacfa63ee71e66f83a214012bee42a78021"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.28/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d3f306b79ead00392fa9a640058d46a57e02fca42c99dbb85a9764bfe03a3f57"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.28/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "eef06c9f76d56c9eee12f91d794cfb2622ea8282518184ec7a34d68e80d2ba80"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.28/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8393364a47f14e02ed0b241bbfeb637d0766255631c86569a9152e30364df069"

      def install
        bin.install "portal"
      end
    end
  end
end
