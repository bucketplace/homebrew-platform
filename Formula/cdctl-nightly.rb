class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.1-9"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-9/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "43c961e9d11f8e2fc0960f6489a62c4068499811563712107930aee73363234c"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-9/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "498a62ce67b84de1376ca1c4b16308116bc95845149c6472bb09833c5f4e1660"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-9/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8cd81401ecd939a90c7cf690394ae25dc22e34de4ac1a5bf1515e3b5b65e1bc1"

      def install
        bin.install "cdctl"
      end
    end
  end
end
