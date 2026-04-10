class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.2-9"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3e542a174c53fe24427a1a28bb9d0f9653585e84bf8d3a4331c6618ff979baca"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "eac74803f97ce0593324f443a97dfe2aba5af07cf242bf6b10e3f08daeb62a42"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2d3ab0580573af5bb9f5c3a16a599b1def13279bc0852190fb434baab8005c0f"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ddc6947fc2b4a5c933e7431856f691ae2deb8db3720be124f5a93c2d327af89d"

      def install
        bin.install "portal"
      end
    end
  end
end
