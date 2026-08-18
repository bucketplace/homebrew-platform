class CdctlAT16 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.72"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.72/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "873ac938bd98511fbc0b6ad5e1628e5e3eaf537afbaf3ba21c8192a328bc57aa"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.72/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f2f83a8c35348738637b9d7fb7b6bcbd056ed2742f6c7e6e11cc8793213f6faf"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.72/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0fc6420f047b2ae4eb73652e989a85ce7e0aa5aa78636b5d909cd0b4ffbd1b2d"

      def install
        bin.install "cdctl"
      end
    end
  end
end
