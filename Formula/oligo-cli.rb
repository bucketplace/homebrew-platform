class OligoCli < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.23"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.23/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d1f45b491d8152d4e0302aafc7d3e40f7e4d6ea8af413de81e483d301fc27186"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.23/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f71bb43ba50a0fcfae1386177b5f868b076b4be34580fe9ec81fbae769c5e433"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.23/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0d165b9d91db88b40b2763197e88cb1bd82e6edf7ec928a7e68382f4d355af05"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.23/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "269d4ddbd8684342ca64c1c79d4977a0566b4b971f22099b74257c48e8a26fb2"

      def install
        bin.install "oligo"
      end
    end
  end
end
