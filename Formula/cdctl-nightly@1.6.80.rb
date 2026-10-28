class CdctlNightlyAT1680 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.80-48"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.80-48/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "41d70cd7df7ea09e3225b634afef13c7d64ee60012db812af245e811134b986a"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.80-48/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9a6b3cad0c97dd654afc6b2aa285a2e7614013f9ce2c5e85429f1a8199b33721"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.80-48/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1f88fa9a18219a0b805a09c057571327b58666aedf20837e9d8c542325e3b213"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.80-48/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "de5de1752f2cba0d6be57b50d697b88d7d1e86ba14e94c754181a6ca610c28c9"

      def install
        bin.install "cdctl"
      end
    end
  end
end
