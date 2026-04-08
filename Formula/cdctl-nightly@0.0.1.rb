class CdctlNightlyAT0_0_1 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "0.0.1-14"
  depends_on "awscli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-14/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "34cff4585126f893114a4571f40be6f26fd31cf50d7c889ae530005952a31f47"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-14/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bc6d11695cc3323949cfd6596e8380bd30df0bff07d26c8d36603871ac1daa98"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-14/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8be3915c1062321d2d13d524042a5bc1cafdfcefdd07a52af842171190c2ba8a"

      def install
        bin.install "cdctl"
      end
    end
  end
end
