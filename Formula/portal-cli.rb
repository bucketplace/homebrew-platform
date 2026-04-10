class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.2-9"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "08f9fa66877fa26be39ea467aa9a4210925fd82308200ed1801554c02af884b3"

      def install
        bin.install "portal.exe"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5e90118089da139ef0f3b96dd39ebfd7f218713c8754edcb86faf606f8e5da28"

      def install
        bin.install "portal.exe"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "335dd6d2437fb476b1cbbb45ec61ced5111ef2350aecfa510fb6a6cc8e51160b"

      def install
        bin.install "portal.exe"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "153f4d0b2030fb7c20ec82fd6802c9b9da0b083c3f7fda6cf1188d0859c15a25"

      def install
        bin.install "portal.exe"
      end
    end
  end
end
