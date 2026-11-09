class CdctlAT1 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.83"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.83/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "57776dd42a670e47b18a54d919f173b1d165999c5967fc58d8e92064523b6bc8"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.83/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "492e246be0d7874113e37ef1da1dbfb8a75ce51122abadb8df3931d4134e8b7f"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.83/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7b1926b4f23f134a45aea1a3c1312c5e1759f294a0c94db8b8ffc557b9bfa108"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.83/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a8af394539f1bc015db4de2c2484e844cbe9f04b0add495ded6ffbec6a8cb610"

      def install
        bin.install "cdctl"
      end
    end
  end
end
