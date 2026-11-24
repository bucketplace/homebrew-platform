class OligoCliAT0 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.20"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.20/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c4626a594e8f5b4a82d0d1dda69b033f126338b24276e6cb4dd09ef00a0957dc"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.20/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5c2183b991b38ade1a5662a4f36cfb25c63b57964879bbd966af05f41fac7f1a"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.20/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bab82fc28fa7f0c9deb439c17931f481aa44d695803bda418887a4817935c3cf"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.20/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2da250ec1a1ef3f064004648ed080b5c984b193e43c06fcbe42d069b3cc28b8c"

      def install
        bin.install "oligo"
      end
    end
  end
end
