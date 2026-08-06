class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.19"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.19/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1119c652d28bccc823f34c7ec0458440b9294cb88e219aa81563d519b7f64df6"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.19/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "92ea8304f3d050cb75b6088a120db0dbd3d16ef88cf872679d0a89ee50d174e0"

      def install
        bin.install "portal"
      end
    end
  end
end
