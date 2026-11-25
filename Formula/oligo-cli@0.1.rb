class OligoCliAT01 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.21"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.21/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d50b6e2f56900a50b2cf08fd04341bb50bfb19f936bc70198a5d48b733be25f7"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.21/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9250f7685e9929de4895ce5177d6dcbeaa1fdd4e0df9f07fc8a21ff0facbf96e"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.21/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "709e2d42e3d3102728b1b24056da3a5dff0c32266fc147f7590c8ab21ae78cdb"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.21/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e2098322a3ee88d3fbdc47b2b1a182fde9e375598bf282ddeb18b8f8685295e9"

      def install
        bin.install "oligo"
      end
    end
  end
end
