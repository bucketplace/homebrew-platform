class OrcheckAT00 < Formula
  desc "OpenRouter Usage check CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.4"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.4/orcheck_0.0.4_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "dfb545a8501f25b2e36a571558c8b7f11f0a2a6d16112788c3818d7dbc708feb"

      def install
        bin.install "orcheck"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.4/orcheck_0.0.4_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "22447481e05796328290e8b2ae589206ca248699e63e8913b5870598c0663b27"

      def install
        bin.install "orcheck"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.4/orcheck_0.0.4_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5244ecadec2a7caa1496606131aaac67d90f6ff27f67b0e9b1b88ca5a1634608"

      def install
        bin.install "orcheck"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.4/orcheck_0.0.4_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e7190317ab69b8647ac52d69f569e4cb08ef719eaad228255039da8b27455cca"

      def install
        bin.install "orcheck"
      end
    end
  end
end
