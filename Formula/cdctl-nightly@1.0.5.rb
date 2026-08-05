class CdctlNightlyAT105 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.5-30"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.5-30/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5972da09894bfb7e7c00b536bbdd20e6dd701c5a1a18ba44894e5359cb6b3b4e"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.5-30/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "769fabe47b180a4d06d87ffd200705dd6f95d5231713a6bbcc2e9c86399e286a"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.5-30/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "eaeaf70589465994d7164e512aa427e1ad7243233b576251490f765f051f9759"

      def install
        bin.install "cdctl"
      end
    end
  end
end
