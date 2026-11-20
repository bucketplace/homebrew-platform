class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.84-54"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.84-54/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4e3cc50a43ee0158ecc371dde4421770899e275546286e76b2a073c29c2bd245"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.84-54/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f9f8966c75f8d5adce4745cbb0cbe7eac11e909394b911506cb0c3e416f74336"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.84-54/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d79fb7cb95325cf06e69eb6c6f94f12da88ba45fd9bfbddb720a64d72863d875"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.84-54/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "328ee2f049f47d9ccfa3ce1d1079addd8a0a071c53ff700268acfd6d8ddca57c"

      def install
        bin.install "cdctl"
      end
    end
  end
end
