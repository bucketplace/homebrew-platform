class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.1-8"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-8/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b6c305301f0cabe6a3c06bf24cc91f5112ee33910edf6d57bc9acc81ca7308d4"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-8/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d0ac5e52516c1de2f09bf79569d0bce6b8630149dda07840d9f0bfa296d528cd"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-8/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "36dccc089350523f1a5133c528ac3f2b2ad2d1533ba8febd4fffd565470b532d"

      def install
        bin.install "cdctl"
      end
    end
  end
end
