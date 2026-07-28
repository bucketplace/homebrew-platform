class CdctlNightlyAT104 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.4-22"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-22/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b8634ca6f0167a3919e3424289220d79d68bd1d58adff9e694474575084e1c7a"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-22/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ccf370614ceaafd43e23713a64c22bbb52641036b977ab9e3ac1a0af969cbb83"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-22/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6fd44f61142e721d5944ca28bac7b3373af7aa4e3faa279aa47bfd7a4d7ae0d2"

      def install
        bin.install "cdctl"
      end
    end
  end
end
