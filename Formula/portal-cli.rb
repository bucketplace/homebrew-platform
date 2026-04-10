class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.4/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a51d66bcc83b3c8a0d8cf9c1ad6862a264973b3aa7be162d84b96f06150a0611"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.4/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4d65c107065d60740177cf5f076aebe4c0d99268bac855228a2d8bbca672d94b"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.4/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a7fa12e80db4d1915e83a6adf5e3a28470d17a421a9d3ad2062a2f77fd53bed7"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.4/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ab4c2b951d72c9c5b78e5132d66b32ec7956cf89bda74995f22d87047a1cf655"

      def install
        bin.install "portal"
      end
    end
  end
end
