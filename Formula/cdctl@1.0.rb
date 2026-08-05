class CdctlAT10 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.5"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.5/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5addea6165dcbce7da62a90d0f651ec9f3fdb4ff9b304f1a1b720e0117644298"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.5/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f338ff1be4e7441595bc5e9677a4aae129a554696b5c7479d5342379c7775e01"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.5/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7f3ed82cf07c21cdd22675d435a63fd8ae725ff5d36b795ee30f2832b211f57d"

      def install
        bin.install "cdctl"
      end
    end
  end
end
