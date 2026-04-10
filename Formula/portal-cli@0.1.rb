class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a478463153653118a4fff1c61d173ba819d56c4834332613059bcde69ce823f6"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9fded09c9a952944f4e9f2eca45fbbdae51eb67c4125fff2f64c948a98c2b369"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a467cfe7ca18e4a51a588fd2c0461191b0b0ba229d7c377f80f539848ad039d9"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "793d0b00f93b3723af6b752f1f5b313f48ebd5dea6bc17955e19c2ee778f488f"

      def install
        bin.install "portal"
      end
    end
  end
end
