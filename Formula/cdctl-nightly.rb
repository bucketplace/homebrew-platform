class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.4-25"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-25/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2a9781089c643793d45d4292c8ddc45dd1febdcfa61fc4b5a1274a4ceca0bbe9"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-25/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a3fc202d498773dbc69847215aa8873ce98c209c06be805a22556feb3a277d97"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-25/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "313ff7c0ddf08d7e7118c196fdfdc231e4edeecb815c0b916a1040b7da9b75e8"

      def install
        bin.install "cdctl"
      end
    end
  end
end
