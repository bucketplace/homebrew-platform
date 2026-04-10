class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.2-9"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8a72d55e3e620dfd5e770afb9acd8db51436ce07e1a406ffdf4823c7a9256afb"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "23439a6589cc868d4e46c0cfa7f531f5eddc59dcbef103429b5570c1cc3dafc3"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "53069fc62145146566d4a28871ab608cfa0574acbbbcbd3979d065e5fda4a41c"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a8b52fbd8cc8931a7eeb57979beed33707d28cd3aee2947abc9c86273e52f815"

      def install
        bin.install "portal"
      end
    end
  end
end
