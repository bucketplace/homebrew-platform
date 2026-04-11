class CdctlNightlyAT000 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "0.0.0-2"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0-2/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5f3b43e5d32164fe240a7aa4a1868c51775de559ce8436a655151598b54d21bc"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0-2/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "88914652af97592230d04b0e46c4b4b3bbd114ccabbfdcd178a4b9a162915b5a"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0-2/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "19d9a434439e77174f72013afbe487d60093fbbed9cfe249acea2fb8c003b5a0"

      def install
        bin.install "cdctl"
      end
    end
  end
end
