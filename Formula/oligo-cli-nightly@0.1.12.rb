class OligoCliNightlyAT0112 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.12-25"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.12-25/oligo-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "18875330f348603b787a57dc3e68316782cbca6c8fadfda790493fa968a25683"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.12-25/oligo-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9595b5819c8e32cff9f4a6b676b95d5284693f726dc99f8917811b2762b08931"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.12-25/oligo-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bb185a951f7e24e601e22534872ed11a13bffeb2a9301e42e8f4cf05949ea261"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.12-25/oligo-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7dd07b88002d920674e85968f00a0fff7db40e7260a988f24cb46d5628469bf8"

      def install
        bin.install "oligo"
      end
    end
  end
end
