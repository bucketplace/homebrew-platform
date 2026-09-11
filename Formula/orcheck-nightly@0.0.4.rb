class OrcheckNightlyAT004 < Formula
  desc "OpenRouter Usage check CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.4-8"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.4-8/orcheck_0.0.4-8_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "53200547653d65f6875733dbed76e5f831ec4a0eef52721b4c1384ff05712a4e"

      def install
        bin.install "orcheck"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.4-8/orcheck_0.0.4-8_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ccecf64e52eb699d8283fc6fb0f1a90b2c9d90b4db8dbd4bcdab1a5861a075ad"

      def install
        bin.install "orcheck"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.4-8/orcheck_0.0.4-8_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "66bfcef9253ae766f30f0bb4ea0329003180d35f3460ef23babfe5f283440e94"

      def install
        bin.install "orcheck"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.4-8/orcheck_0.0.4-8_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "cca6457123af7a15bfc22148c76ef5f92be9dc9441bb327226311519c6965679"

      def install
        bin.install "orcheck"
      end
    end
  end
end
