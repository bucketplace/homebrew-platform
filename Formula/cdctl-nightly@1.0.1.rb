class CdctlNightlyAT101 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.1-19"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-19/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7d9c16e0d448fcd5015b084d9cd280c33396f72ecbd30e170e0548b9d65cfa16"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-19/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d0d3f12980834424560e71134274e5072c0fe661401258537f44a77675a0f7a2"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-19/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "fe817da09b7c17ac7ff3822c94ab68c56ca98f99c553023e3ca89e444bb910a4"

      def install
        bin.install "cdctl"
      end
    end
  end
end
