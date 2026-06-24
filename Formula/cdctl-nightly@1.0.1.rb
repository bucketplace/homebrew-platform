class CdctlNightlyAT101 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.1-15"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-15/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "019e03cc7d128a4a7606fd87fa3178567c3d3dd149e3d3f957f048182e4ca73f"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-15/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "28008b86f283254ea764019b84b1b77c71b38ed6b2249a5716f02884a429d672"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-15/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8715d59a80458d4ac558d34cc989d6e50019aaf8a70384fee8d63827fd164dca"

      def install
        bin.install "cdctl"
      end
    end
  end
end
