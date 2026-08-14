class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.27"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.27/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "aaff88a880705f8135b67928cada57cea511852fff82ed11deccc071065b08e4"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.27/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e6fc307e99fdaf809e0bb41b03ae5cced1e48dfaff76d3b73895152117451b8a"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.27/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bdceeddeb79b6941f99e024415205e19cabff3b99f0671a8f95f30191550fe7d"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.27/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ccd52c7d76697d59c3ed878550d90141774a891335193917c79baafa61985aae"

      def install
        bin.install "portal"
      end
    end
  end
end
