class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "0.0.1-21"
  depends_on "awscli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-21/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "17dcd565f69ee709485d242c68780320c0f4d2221d3383ccc27fb0e1e481642d"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-21/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "935c647be4f9db9146c14c3cd921ad6f542e74f68f025a1dc6c8021bd443c92e"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-21/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8136b4d51bbb4ed900d1292c8210a0acf735d0deac72afa6c6d4ceb68f97391e"

      def install
        bin.install "cdctl"
      end
    end
  end
end
