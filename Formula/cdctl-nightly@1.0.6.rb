class CdctlNightlyAT106 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.6-33"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.6-33/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "15e24c2d9877f6a7fc7f4f52b5f9d5fa582c5ab02b8c76f8811da544a0adec7b"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.6-33/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "173843e826130dd63f221c58cfd56131cda32959890aced037664dba09dc367c"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.6-33/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "65f3812b7f6b8e9bf8d628bd20055a3447ce7d5e98a21f97264db8962b5be1a5"

      def install
        bin.install "cdctl"
      end
    end
  end
end
