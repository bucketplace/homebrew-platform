class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.20"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.20/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d0e6af2d9e95d54ee3eb243a56f5463f23f4297927bf7c9d97ecc5e2ffa86188"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.20/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b6e2992e2af93706632bc8a93d928914b4dfcf1dc26a04ed0bc03a3121bd42f5"

      def install
        bin.install "portal"
      end
    end
  end
end
