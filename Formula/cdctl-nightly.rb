class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.1-18"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-18/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2a53dc3c7569fda07a8eadf69950f6f09aa95b9f8ceafb9732ccfb7145bc1447"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-18/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9027f9f6d36371db6b32376edc41288474f232266eb8a278e97248e718e21634"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-18/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5a3c412dce15b94885a5bcbcc6a2fb1aa6dfd0b5e67c6bb8ee3a4daacd8584c0"

      def install
        bin.install "cdctl"
      end
    end
  end
end
