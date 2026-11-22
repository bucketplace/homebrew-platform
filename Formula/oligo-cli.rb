class OligoCli < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.13"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.13/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "afabb0138194d46c886298749d5830ef4bd1cfbe46fca7812ba668a6687a839b"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.13/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f40e17a2d43eada75db652aed077275271d1f597e0a67264b71c77ab2ecac8bf"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.13/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "887d87c8311430587ee4d6fe14af52b9731eb571af7c562192d033544a34a1e3"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.13/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "56a5c8135581567b41b63dddfbdd0e7e8bf3c909b58fb521a84a5b5549427cbb"

      def install
        bin.install "oligo"
      end
    end
  end
end
