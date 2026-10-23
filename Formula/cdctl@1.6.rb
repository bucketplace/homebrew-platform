class CdctlAT16 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.79"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.79/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8c5b83c4ddb3ddc012861ae601ae19e211e7ab81309432c6ba0b7ef9616ebc2f"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.79/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7ae206b8bd74dd403554b0788573b88cdf313e7c0708ed9343ac0ebebe76f4fa"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.79/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "94a5811dcf5d79c3c6ee236ac027727547370f1e726f2ef06592765652b9937d"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.79/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ed1c99f1004a09481a176190b5229e9fa51bbfd98ce83de89eca0131031a038f"

      def install
        bin.install "cdctl"
      end
    end
  end
end
