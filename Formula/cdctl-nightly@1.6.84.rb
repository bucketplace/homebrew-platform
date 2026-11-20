class CdctlNightlyAT1684 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.84-55"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.84-55/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4032191611f5d08c5cc079abc7e3cb7574c34821fc438267993a01000588f286"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.84-55/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "88604273598faf9a45405862e2ede5d3c4964823d2e7311f665f263c93334279"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.84-55/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2e7485f315e7fab6e70170176a1f15fb3a2e5b75d21572f7f255adb7dc5e95db"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.84-55/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "86117abe7ddc22f7bf455c9fac7686968cb3b8cb75b11349cf587892874e3a84"

      def install
        bin.install "cdctl"
      end
    end
  end
end
