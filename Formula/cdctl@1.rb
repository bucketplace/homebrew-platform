class CdctlAT1 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.74"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.74/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "eb3004904b95b4a5cc6610bf69f8a25719829349862abe57fcc010b724f95004"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.74/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7d3307f73de39d5985d354be63825e1b933b5faaca7d153c8a9068206f0a8f69"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.74/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "719571c512aaa5e0e2b8f504ce8400dd405486a4b0a543ee32a679c2d3b2d1f7"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.74/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e69647f114408916ea5efa6a740f18548ef51d2af5c503546b6aaec6dd91f2eb"

      def install
        bin.install "cdctl"
      end
    end
  end
end
