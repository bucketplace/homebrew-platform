class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.4-28"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-28/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "aa65ecfb5579a317e748d89525cdc9ce50efcec398f9bc6f76a799662dd93dd2"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-28/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "838a9f74e35af3c7abacd44fbbf5d53da07836dfd64350619ce9443d8fdbfe73"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-28/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6a9446016868237e328ceb74630bf8025d83dbc5859af4f4ce4a950eaf7cefaa"

      def install
        bin.install "cdctl"
      end
    end
  end
end
