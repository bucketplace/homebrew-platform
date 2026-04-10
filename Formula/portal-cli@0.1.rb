class PortalCliAT0_1 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.2-9"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "77c528c8c4b706a8a76a7be63629a2d673c03acccfa7b20e1209ba038034e8f5"

      def install
        bin.install "portal.exe"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a76e0ede402e578133679c8de4542257a714465c90a73518962d23715fc1789c"

      def install
        bin.install "portal.exe"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5384da2ed2d8c0e18e6e37430c07d877b5e0dd259426c86de3df00ab306cddd2"

      def install
        bin.install "portal.exe"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "db42e812ae31cab29369507bf4b0a6f586c84d682aa8e34cbd169903b5124d9c"

      def install
        bin.install "portal.exe"
      end
    end
  end
end
