class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.4-24"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-24/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c37224d89cff96e72979983f90f129b9afa3fb61db7ff121a28a05afce311373"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-24/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6dc83d09dbcd3a9b5493a2b8afb048d9ada9d83e45a6a6cb93db1e6ecc874424"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-24/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c2e81373f87a66c99d0d04303d5460c586344e3b014f0d6a8d97706ce72565c4"

      def install
        bin.install "cdctl"
      end
    end
  end
end
