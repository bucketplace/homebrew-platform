class CdctlAT1 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.4"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "306a958f2c3fd9fa865db960f0a5100ec95f64b40dce292f061a3e6821c00cec"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bc2add8c4d06e61e9f809776952b151bc26954252ef732a827eb91215d1268b3"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "49ec7d65bd0826a495c7c40e31d521ff12bbfc0c1c5168204650eee9b82e42c2"

      def install
        bin.install "cdctl"
      end
    end
  end
end
