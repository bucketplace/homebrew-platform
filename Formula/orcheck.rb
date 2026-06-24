class Orcheck < Formula
  desc "OpenRouter Usage check CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.1/orcheck_0.0.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6dd598038e54ca7b391ff2645b3b6160b7534608e51de250a136e474b7b4b7ce"

      def install
        bin.install "orcheck"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.1/orcheck_0.0.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "acb4cb40fdc6955886c1bd131e42b448894362d182489bab7b2c0225f10313ed"

      def install
        bin.install "orcheck"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.1/orcheck_0.0.0_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "038743a1b14f9eaadbc5c8028e45c27c38a30334d571de91ce3c5ae39895e39b"

      def install
        bin.install "orcheck"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.1/orcheck_0.0.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fb35eed3a1545b78042d9e14aea78a303c3e4c62bc1450b8b4354ceeef7b961d"

      def install
        bin.install "orcheck"
      end
    end
  end
end
