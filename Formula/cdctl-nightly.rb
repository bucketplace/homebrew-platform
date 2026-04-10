class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "0.0.1-24"
  depends_on "awscli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-24/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3d222213618ba9cb5dfb5329cace4db7f7c090045c85ce62a3f5fc5a36277bbf"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-24/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d80148a1c8c5dbf74ee9a929cdebb1596c4603c71c5be14c9dc03983f41166d8"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-24/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "62672fa94b6e20ce9e9df7958850ee791c3790a8b7c466c1c1eb805e7009f95e"

      def install
        bin.install "cdctl"
      end
    end
  end
end
