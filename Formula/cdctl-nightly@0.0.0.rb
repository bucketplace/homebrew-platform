class CdctlNightlyAT000 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "0.0.0-3"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0-3/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "75cd28e1fa3423b4cefc84cd6a5dd88a639f3316d3596c7ad6808a9a7db2aa32"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0-3/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "dadffee18f98ec20a3b1becb2542871ddedb94246187511c9cc85195c02752b4"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0-3/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9e008cae26d99c17f83f0ecb77bb04cac4d38a852bb0fc2fd94bf201b58248b3"

      def install
        bin.install "cdctl"
      end
    end
  end
end
