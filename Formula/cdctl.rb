class Cdctl < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.80"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.80/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "14352dfd9d191f00a378f879e969d80897dea81786e407b75ff523231df87ba7"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.80/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0f481e160d36e07c777e4e35b342f73420b37ed3128294c9405c84ffb6a4dd33"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.80/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "94aae50e438131f7b364d646a65f5988c3be0c697b9079c100f2611b0d5b19c0"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.80/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6dbd5936b9307ef54b3ee69506e336de7d76b632a715d2738f84d8037367838c"

      def install
        bin.install "cdctl"
      end
    end
  end
end
