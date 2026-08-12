class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.24"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.24/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a705054613fdd613be466c34fea7e34f8a10bb11b90162082a02ddbf61015708"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.24/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0588805a06640241caa291da4b27e58cf922d103243cc4b03e8e52b4114dffa9"

      def install
        bin.install "portal"
      end
    end
  end
end
