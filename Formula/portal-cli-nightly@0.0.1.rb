class PortalCliNightlyAT0_0_1 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.0.1-10"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.0.1-10/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9db12d8b4aff309925d519a28ab3c20b8f5c3ce31f7e8bd02eed8b61a7d3ddc2"

      def install
        bin.install "portal-cli-nightly"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.0.1-10/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c8f427d16e0c9422e7754adb4490bf2a297753ea46fb021fb47fdece02808737"

      def install
        bin.install "portal-cli-nightly"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.0.1-10/portal-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "cbc942b89193f723e9ab9083b8dc22ea5b8647398f7412d190c3f2370e616257"

      def install
        bin.install "portal-cli-nightly"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.0.1-10/portal-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "332593e57ee9a32eb53b518e3b496ca88a765ecd3ad415fc773ebd5281288026"

      def install
        bin.install "portal-cli-nightly"
      end
    end
  end
end
