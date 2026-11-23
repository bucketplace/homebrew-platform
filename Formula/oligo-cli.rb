class OligoCli < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.15"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.15/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1192de0a9c2d2ba69030a332206885a72f54b3a145d0d767a20eadd450a9bf4e"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.15/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1b35a2e1cbd951828d869f0b9a223cae28fbf63ae114fe122121b13c8525902f"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.15/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "31fc85723d878e24977f6effab250f15a3e2cb2c8f9669df76dadaf16577bbc1"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.15/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f63d65e948ef793f834c96fc02844394d05fa94230162b6b0c2a56d5262c02da"

      def install
        bin.install "oligo"
      end
    end
  end
end
