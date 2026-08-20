class CdctlAT1 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.73"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.73/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ee896f209a9f3d4bff035bdb9d2591c8a00d1adff78c4ff66b17d4981f2013d9"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.73/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7b9641ddabde5780ad788d77505b4340b3fcd36b460acbe7c9d14dd3e566fa08"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.73/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "83aadbec34c7dd2f1c03d8e22b287ec8eb34e242a7d33264844390e8004e02b7"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.73/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "25893c0954a62d8d13047ea54fcab9388af9338cb9b9f1cbd39114cc4b9c979a"

      def install
        bin.install "cdctl"
      end
    end
  end
end
