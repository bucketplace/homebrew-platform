class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.73-36"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.73-36/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "70ceac87709d85c133abe1af3292cb78bb637b5df8cc59c1f610fc671ce9314f"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.73-36/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "27b15411af434a9500d4bc4240254c47f8acb3ec65fd21bf3655435c695cbb39"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.73-36/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1ca3bd3d065537e563d9cdb9334907a993837851ca4f4021781d31202c1eea16"

      def install
        bin.install "cdctl"
      end
    end
  end
end
