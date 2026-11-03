class CdctlNightlyAT1680 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.80-50"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.80-50/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7bd2cac61171f40e8afee99d3b12ae7af4c839755081157ee538ba8b2486c544"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.80-50/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c479290a3645773d3a581b89e66bc589507a142cfb992722ca3b081ad90c57de"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.80-50/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3c9f4ca6e8eb22c37b0f1d501f48492f978039bbd9a8972e1cb1d96432838bcd"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.80-50/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "492b49da75f74b92325c9d56975bffc49bfc2d7660c4c4de85b64cdc67699357"

      def install
        bin.install "cdctl"
      end
    end
  end
end
