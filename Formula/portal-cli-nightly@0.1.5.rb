class PortalCliNightlyAT015 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.5-12"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.5-12/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9d8e7e6cffba13e71010fb13a2ff160952b57d2a2eede3de296fb1626e71835c"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.5-12/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a2d0ca2ee1a9fa633e5a5108a08729790a74e443bc70ca6c3007178c5e73492c"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.5-12/portal-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a15b41304c36884225bf824cdb2f813787996dbb6d26488a7f2b88f11a1491e7"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.5-12/portal-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3c8f8f54aeb5ec62ecf6fd0d3f4e24b00414211887cc5b48e441512a6e71b414"

      def install
        bin.install "portal"
      end
    end
  end
end
