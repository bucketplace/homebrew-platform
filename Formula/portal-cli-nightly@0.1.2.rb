class PortalCliNightlyAT0_1_2 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.2-9"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "80db472e71e6ebf6f124ca3c1e1477f284d3f2ea69c737e8c25b16b4bf60301f"

      def install
        bin.install "portal.exe"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6b7038ee1142d392f3e3829ad4c0ee19b8d5f7bf198e9ceab46c235c1f9c370b"

      def install
        bin.install "portal.exe"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "16e5599c5f680b41918e7d5f975ded8af2bd3cdc8e7228410a9b66b6756d69e9"

      def install
        bin.install "portal.exe"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.2-9/portal-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c212452228f09cf2ecc553a9a44b992dba7866576f29bd93ee6de9836de3b8fe"

      def install
        bin.install "portal.exe"
      end
    end
  end
end
