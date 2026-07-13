class CdctlNightlyAT103 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.3-21"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.3-21/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7b4b665bb4d7981bb0e7712bb618b099c09cb6b10a96c28b6fdcb8a8b5efc0c7"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.3-21/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "cbf532d52dda46aa4597a719f23629a975aedea81bce42f1e14dec8c23b521a8"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.3-21/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "dd96132f3aea83a4fc2b7bcf90ebdd9404be4982fed299345882d85f3a8efc46"

      def install
        bin.install "cdctl"
      end
    end
  end
end
