class CdctlNightlyAT0_0_1 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "0.0.1-19"
  depends_on "awscli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-19/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fa564f0b0d5741fbe59439da4934d6bc4c1ff86f3ade59bdecededd1e5544688"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-19/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2dbbc062e28e59ff0344f403a64ec594fcb945ec274f908104d66a7adb8273fe"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-19/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2ed5dfbd773eeec33d9d698befff840e0c436415408d50f6359eee14c79d570a"

      def install
        bin.install "cdctl"
      end
    end
  end
end
