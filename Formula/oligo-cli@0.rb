class OligoCliAT0 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.28"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.28/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "718e18275ede7fc558bc4e9fb09efe833eccde4b030b276e2ef17dae314632c3"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.28/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ddbe889cc774a72b0296354967a8639dba2dc5da0dd4b36da24c45fe924d5fc5"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.28/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "fef111ebeba8dc73d31c442e7777bb267c58bee39b2d91c9e504375b20466a35"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.28/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "163c2fe58fb3bbe424292b1868340dd4b28cd15f89ef62d1fd92d4a964623ed1"

      def install
        bin.install "oligo"
      end
    end
  end
end
