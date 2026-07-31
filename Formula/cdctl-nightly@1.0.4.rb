class CdctlNightlyAT104 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.4-29"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-29/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "555d70c3d3254952cd2b02ebb1fbf74ade0e96663ab9b2dd76d5563f1f79c82e"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-29/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3ec943448c7599455306904c1703a4270d23b96969e87109e865574d4c202aa3"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-29/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5070fdf72b9aaea4a47988628d8a376a84115a2834ac5a8b27bfd811fffa3478"

      def install
        bin.install "cdctl"
      end
    end
  end
end
