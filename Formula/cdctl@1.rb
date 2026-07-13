class CdctlAT1 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.2"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e912106639adb3c8eb65b2cba1089223dc1865c97640594bdf05ef911542c8be"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "147d820995cc897300ba292ba2c4f20f390eaff8f434d0dac333a62a446cb072"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a83ff2d5cf8f5add113cf639a73cdca9837d6d71c2b5fb660f8d9816a6f3e989"

      def install
        bin.install "cdctl"
      end
    end
  end
end
