class CdctlNightlyAT101 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.1-13"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-13/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b506cdf4a18f9851afc004f623bac0ac2be109e5182eab0654eae213b08df733"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-13/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "695f8d84a7a6de61e6b585bc65666730a5af95846f33a0ea7d54fe600de1f226"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-13/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5bc2e599b347ee14095cd5ee1bc714e69704b902202b2aac8e5e5309ebf87e54"

      def install
        bin.install "cdctl"
      end
    end
  end
end
