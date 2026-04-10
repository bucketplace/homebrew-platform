class PortalCliNightly < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.0-7"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.0-7/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b4303b7c801991a6a64e448f8a4417a3cba0164ffa1a4b1904dc8344d35ae714"

      def install
        bin.install "portal.exe"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.0-7/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "982ffd4a6242381cd569209d312e4b5ad91236f88b3f4683f25577a4dfc4a4d0"

      def install
        bin.install "portal.exe"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.0-7/portal-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "391d9cc2b0ee9509ce9b0ae6e307efdbfb7239894133e498fc3b2bbf66157da2"

      def install
        bin.install "portal.exe"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.0-7/portal-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "054cca9e5f55522260fd1e12a37e5102620768706073c9efe1ff90df389363ac"

      def install
        bin.install "portal.exe"
      end
    end
  end
end
