class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.1-14"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-14/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1d249e05d50165ad832db64b1f8fdaea341728cd8a436f4be7b1205131705976"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-14/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "172221da5854dd4cbb195270590be5c42ebdb269c1536ad84e8d26ca1443f509"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-14/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8afd4f307877b2cc887ddea74a17e46d57657577cf63f4f28f65869a90b9b075"

      def install
        bin.install "cdctl"
      end
    end
  end
end
