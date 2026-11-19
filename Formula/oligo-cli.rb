class OligoCli < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.10"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.10/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c0c1f75697f64b8e085eefa97baafff1c01c7252616ca55b4500f8a5a358f54a"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.10/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2cc3b32b57602da436ca0b14f3c8a0191bc6029c4a7b737fa4a75968c35de9dd"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.10/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2b3329888ea9ed08b3b8ada1d84a589f6419eb9c3f9b9894581febf09b00ea66"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.10/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "be0abaa40325d669ff49827423db4ada5becd86ed1217712e84b2ac789fe6382"

      def install
        bin.install "oligo"
      end
    end
  end
end
