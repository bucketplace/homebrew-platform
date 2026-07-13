class CdctlNightlyAT102 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.2-20"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.2-20/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "35d81a10eabb6733ef7b41be70f19570c4dfb56b9805cce7242c31cdce5a9f20"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.2-20/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "572e54b2f8061eab3103617dac7b77e55091c9e676ef001dd464f10452c4c689"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.2-20/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6d3a2471e0ebae504a2e534876e3e681a4349509e6421f8e0ce55360ac1469fe"

      def install
        bin.install "cdctl"
      end
    end
  end
end
