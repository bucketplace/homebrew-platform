class CdctlNightlyAT1683 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.83-53"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.83-53/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "57cbd9509197fa355ea3639ac9a5bd5035aee107582b3406f41fcab38dab328a"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.83-53/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8c43132e2b56a49514a02f81ec3814c18e1c0007d8b23f23d7a9336a3b8631b9"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.83-53/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b26c81b68e32ac4db5f9e6d0ef2c0cf654ad6685529e122b72b7fa3bed387c21"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.83-53/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5f50fb95587f86a2b7cdcbd65b9d0c3c5207a7ffb3262e979e31154f6d0558a3"

      def install
        bin.install "cdctl"
      end
    end
  end
end
