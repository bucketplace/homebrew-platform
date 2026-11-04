class CdctlNightlyAT1681 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.81-51"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.81-51/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ca2bd4c61acf0bb40b010fa3af5013dfa4fdc281adf6948f9c7e43486c967af2"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.81-51/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3c1bc7fa68aef3f0f107f6e787d31d194f0cff9696a0fd0e38ef2ecdc5b8355d"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.81-51/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8352911a3cb4e3fe5432568eb183e1a2ffd4e2bcffa397c9484b56d8e56c891d"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.81-51/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f91b010c562695f23effe5695f5f57c966d430505288a3b4450864c7d069e213"

      def install
        bin.install "cdctl"
      end
    end
  end
end
