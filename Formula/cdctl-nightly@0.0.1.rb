class CdctlNightlyAT0_0_1 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "0.0.1-17"
  depends_on "awscli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-17/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "de00d2166cb327e0a668762019a578ca1d3a29a8b0bbd3a16c378238d6a97585"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-17/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2dcff2f7a345d529636eeb0e8fdbfd7bcf9549cfcd182f336dd47a13074e2f4c"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-17/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c873ac57126050f141890d59c52b78fcfa35ba44f7969b0131c8088f6dc2df3b"

      def install
        bin.install "cdctl"
      end
    end
  end
end
