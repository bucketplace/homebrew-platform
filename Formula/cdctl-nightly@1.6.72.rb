class CdctlNightlyAT1672 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.72-34"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.72-34/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a26aea1047f1ade368144022ee77dd1978fe9d1982b5cfc8c7410d8e43ccf1a5"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.72-34/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "61a406516503b68ea1ecf418565c1b53619e3fe37b6fdea80d6b0e78920dace1"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.72-34/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b2d80c418df852f930e42aeb55b2dc9378edf32137ef0b07cad448e4593cd1b2"

      def install
        bin.install "cdctl"
      end
    end
  end
end
