class CdctlNightlyAT104 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.4-26"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-26/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5479d232f574605f12f27a01be9addcc3450ccc74d0875e0f2239c41db134441"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-26/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "dca3e0e7aed39cdf385be356dd7b360e8467646040cf247ee6fc1e32c13193e0"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-26/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5c599d0731e5a6d77ad61e9b3174f8477a7541a164a62223c634f04b1e95bde7"

      def install
        bin.install "cdctl"
      end
    end
  end
end
