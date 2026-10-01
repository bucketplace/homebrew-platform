class CdctlNightlyAT1677 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.77-44"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.77-44/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9c4e654174197784843e94cf844632f63306b29debea97a1744e8f2b3d2d179d"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.77-44/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8686236593f3b771ff882396fa9bed091b094bb74c044f66a306e00895d32fb4"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.77-44/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bcc6c5290fbadeef99908f5321b8c7704284874f2c7f9504ebcaca4fea151986"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.77-44/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "abc45c2762400d8d1f518d04d5330a542b7fefba8a3b0d468d71e85e4783cc89"

      def install
        bin.install "cdctl"
      end
    end
  end
end
