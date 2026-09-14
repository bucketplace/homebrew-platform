class CdctlNightlyAT1676 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.76-43"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.76-43/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "637e1c28ea26fc561c728c721ffbfab578533b1a1290bb96baab81fb3ffc0c8d"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.76-43/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "24a33fd5b72b3a4b02cedb6b5e3392be4dda4e873c12049a9e1614aa9570164e"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.76-43/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "be667a81387fbddb1abca288aff2a4aa6647618a15c45f454310a5ebc9fa5f2a"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.76-43/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "34442670e9611590b307071e7692580493c99c5c559620eb8259829bb1bbd9f2"

      def install
        bin.install "cdctl"
      end
    end
  end
end
