class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.82-52"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.82-52/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3276cabdcf0776dbe7d125959a19afba54858714c7ebf25cec81390fe52ff58d"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.82-52/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3d4109e8f5eed793f4ce43f8fa5c1eed97ae6da55aaed092627406c6b8cddc04"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.82-52/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4fed4767c68444c938ba2adcbfbccaef21c545a8674387a36a1e96a7bd273a5b"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.82-52/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f9170ebcebace6a6701f6ae72678f59b044ade11c9e9ab781772f287243fbd2c"

      def install
        bin.install "cdctl"
      end
    end
  end
end
