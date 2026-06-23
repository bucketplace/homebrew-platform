class OrcheckNightlyAT000 < Formula
  desc "OpenRouter Usage check CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.0-2"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.0-2/orcheck_0.0.0-2_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a15705a4c550962801fb7849737d1b756d2d9265d6a6c5829f134dc3912be8dc"

      def install
        bin.install "orcheck"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.0-2/orcheck_0.0.0-2_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9d896282a09f858192ae3d946f432e6a526b48b8bc26665d1de43b9d050e533f"

      def install
        bin.install "orcheck"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.0-2/orcheck_0.0.0-2_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "745dba8ed78d2caa3bb23e9bb83c08406bc0375b288843eef2afbff2f8920329"

      def install
        bin.install "orcheck"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.0-2/orcheck_0.0.0-2_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3109db5d9724380e09395e7d8324bb9124aff96e088d22afa5c6e5651240ff25"

      def install
        bin.install "orcheck"
      end
    end
  end
end
