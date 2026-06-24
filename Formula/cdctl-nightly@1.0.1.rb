class CdctlNightlyAT101 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.1-17"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-17/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e5113374f6d4cc03bd4610d25ea0a6603b2ed30289e930ed36abe0efdd33b191"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-17/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "dbaad40625583dd50598c214cce0d5142bc5bdf4b5ec0f9f96aea53fab044a0d"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-17/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "61a66002ecd366d5876dc192eb2b8aca3374609e3e01a0db01e1cc5c4c1eda85"

      def install
        bin.install "cdctl"
      end
    end
  end
end
