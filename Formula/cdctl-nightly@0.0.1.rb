class CdctlNightlyAT001 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "0.0.1-23"
  depends_on "awscli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-23/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b445488688014b0a8f7fb8ed2d74b279bcf7ab8ce3b6fa634b507e1758f6bf13"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-23/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "25eda875c27fef6b4ae70656892dd1ae1f7e5b34146b00ee6577bc1d558094d0"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-23/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "995b3969a7747e1bb4f9672d3e10e7640ad26f1ee85c0b2f4d72caf625af6984"

      def install
        bin.install "cdctl"
      end
    end
  end
end
