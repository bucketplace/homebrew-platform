class Cdctl < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.3"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "264c990b1ad054704e16a5ca459aefb5952e64ce0ce9f04320a503809fea71b3"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4dbc22fc37953c5e77a7f8e303a02663769d2bbd83bb8892be3074a5dac8395c"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7386ebb4429746104ba48af7a8295b5e52d1694563b819a6da38a3c7090ac2d1"

      def install
        bin.install "cdctl"
      end
    end
  end
end
