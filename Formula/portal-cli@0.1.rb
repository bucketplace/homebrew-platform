class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.25"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.25/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "666823db69a8850708217ce40b169ee84598c6f253d167ba3490186c66faeb00"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.25/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6644651fc8a8363ee6e12d2f1285136069dc40452024491166a8265fbdfff89a"

      def install
        bin.install "portal"
      end
    end
  end
end
