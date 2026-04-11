class Cdctl < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.0"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "81808925f99d960c21e56894c0e699f516a47268e80c0daa97c41aaeef00bae0"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a660032d1697da27b4d559aa01d7cb6ff5856b22fa64d0a3c8f2502ddb2dbd1d"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5058afbb6449401b40aabcf0897e3cf0a7664c01a1fe317bb3288e7a21953d2a"

      def install
        bin.install "cdctl"
      end
    end
  end
end
