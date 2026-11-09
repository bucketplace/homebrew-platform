class OligoCli < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.2/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5517cfa3dac9228caf9cad4416e780a34808923d343bf78644118531ec081eb4"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.2/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e6a6541bd2bbd4746f97c961304255760b8a5d9b55a4973603f38c3a5a0a268a"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.2/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "69dafd4eddcf0175b6211eaf0d968008e4043539299d1dacaf834cdafc5f4b27"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.2/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7506298ad56d99631221aa3aeda63c340df0fa3ba50fc6d32ebd8216b1a0b7e8"

      def install
        bin.install "oligo"
      end
    end
  end
end
