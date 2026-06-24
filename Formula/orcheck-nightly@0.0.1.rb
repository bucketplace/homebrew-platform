class OrcheckNightlyAT001 < Formula
  desc "OpenRouter Usage check CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.1-3"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.1-3/orcheck_0.0.1-3_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0c83d53f06edbfc069ef6785efa0af6182ae50abc574315844715765e14bd0dc"

      def install
        bin.install "orcheck"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.1-3/orcheck_0.0.1-3_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d0cfd2ee86996000d72e7f1841500100bf4e87f04d1acf828a9c8a64609c81c0"

      def install
        bin.install "orcheck"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.1-3/orcheck_0.0.1-3_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "26c051bebc34d2354cb8994d22ff8b57da9b6deee919da01c7a2b2fa0114a0ee"

      def install
        bin.install "orcheck"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.1-3/orcheck_0.0.1-3_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b41dff007381481cd161723d39cd49763d201c475acdd0724e9e0173700a09f7"

      def install
        bin.install "orcheck"
      end
    end
  end
end
