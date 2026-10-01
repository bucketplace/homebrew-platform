class Cdctl < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.77"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.77/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "02e230048f4cdbca8086cb518b72a5101650aa736d24b03747cf7ca3f3ac3181"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.77/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ba3fc73e177332b42001f550b871bc8358a1c2dc67e2f5b647757d3baf31b947"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.77/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8702b6b6dc2ab1ac3cc91d08b99e4ca5a9204ed712d7c815449204a4791001f6"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.77/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "aff4af60c3e5ff475629178f568ef37e845cc0ba74b909977010c37dec4bfe3b"

      def install
        bin.install "cdctl"
      end
    end
  end
end
