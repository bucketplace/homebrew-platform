class CdctlNightlyAT1673 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.73-38"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.73-38/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "eae852f7e8539ef3ff079f0d1533ab489dbe132d612b2458ee78dd5806ef8fde"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.73-38/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "aa093fd8d7a7d2b4058937987389c7ba1f2178685b5ec402eb1712030ff937f9"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.73-38/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9d55f9285b724f215f3998cbeaee9dcf73b21c739cea853cf659e1ec7101f8e2"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.73-38/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d5abaa96dd4e629bd43362ef97351c2c9a13a591ba040b80dcd610a05fc13cf1"

      def install
        bin.install "cdctl"
      end
    end
  end
end
