class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.4-23"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-23/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "bdba38cd6e06b23ce533fe1aae1430a3e522907878e5380c47acf89b655bfd96"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-23/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b7bdf4301b5d2703447d41d02566de79c080e0dd544df3a6ee6d8706eaadd1ea"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-23/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9c92db35f5c06d7d7e46cacd276c2cde5007fbe026839b45dffda5246f7348e4"

      def install
        bin.install "cdctl"
      end
    end
  end
end
