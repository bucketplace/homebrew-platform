class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.8"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.8/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3f44122f06250adcfbe31465eec7d9bac777af828d28169b94d2d9f76c6e7ece"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.8/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "379065483d83157b7b1239aa0691e78b7660ec2c346b2f145de8f185477ce9dd"

      def install
        bin.install "portal"
      end
    end
  end
end
