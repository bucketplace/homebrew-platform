class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.16"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.16/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e72713f8e9dc87f98f58f4952186cd4ce6f24140ef2153eba2db5a72933ea148"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.16/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "29abb857ffec902c9572790d7b216bc6ff10767bcaa4caddea131f82328844af"

      def install
        bin.install "portal"
      end
    end
  end
end
