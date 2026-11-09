class OligoCliAT01 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.1/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d584d55e7a2269ce261f94b670e3f09ee4f57111eee054f014d72e3583e39e08"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.1/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4ea564501a9d13b4ef8362ad8d4d5e86cc9931f1fe37f992788197dd6da1d9b0"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.1/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f88d9ce53b00f089b5f123126fe596516badefa384cb8c2ddeb5a4d7b6e92ed4"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.1/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3e4ac66a95b94fc838d176657b7ba2f80f46b41d399c6407526190852710e9d2"

      def install
        bin.install "oligo"
      end
    end
  end
end
