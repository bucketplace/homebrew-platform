class CdctlNightlyAT0_0_1 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "0.0.1-16"
  depends_on "awscli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-16/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7e654f8188808c8bf57694a3c88af4bb5d22d2fd45b484d1792ce34f49b06f0b"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-16/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "797452e0304d89bfa529adbc987d9fd3f07d81faec57b4312e7f64509d75eec6"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-16/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3356d92f14d9474f1a24216a123d5e669a8ee8ed9e040359c058d2cdf3a139d5"

      def install
        bin.install "cdctl"
      end
    end
  end
end
