class Cdctl < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.1"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "945584885710070e85480a58c20abaa42a23d4045f0cb0e785b663bbec4c5e94"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "330b76bf850a11e52c2eefbec553412421b664aaeb3558e58ecf80a62fafe33a"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a9e9fda31f22e62c0120b4dd6b381bcf7dead9d1d902d263bfe1fe63c7c5ca8e"

      def install
        bin.install "cdctl"
      end
    end
  end
end
