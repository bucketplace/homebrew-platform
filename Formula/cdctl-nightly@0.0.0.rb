class CdctlNightlyAT0_0_0 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "0.0.0-12"
  depends_on "awscli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0-12/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7df33886901ec9da99923286532c3a3e8e934ea66a5abf3ffc93317a376b2c5d"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0-12/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4e5d9ca7c08e9ad85a94a9fb9822e6d4aa1ed1a8d74f3b69399e6f09fbdbb96d"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0-12/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6208ffcf1dcff1401189bb7c6873ad633e1d96da568628cef574d705919ac175"

      def install
        bin.install "cdctl"
      end
    end
  end
end
