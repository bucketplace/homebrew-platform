class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.3-10"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c056c0c3100bedc8e61de56b31d69e7b8b9ef3a946ad2f7d8785d80890bad28e"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "693aa2f352f7cd630b2dd85f11df2636668e194453743186aff04114a59e952b"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "914c87f3a3d6eeb690b539c149d54889a970af36cd8f506662f9ebc9502300c7"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e188bedbf05e05582ff5d3928d4e49fefd505b43030550e296f826ae4e434292"

      def install
        bin.install "portal"
      end
    end
  end
end
