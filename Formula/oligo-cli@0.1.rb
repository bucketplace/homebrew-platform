class OligoCliAT01 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.17"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.17/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a4e8043ea2aca4a718282e697c0f5f628e22f8050583871a77f263c34ad615d3"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.17/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "89254037ea0d6577e50aaa82f9b317112886af45b16198e7b6fe02224783ddb9"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.17/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5d73b0576c2dd72b4230fdf8bde2413642102f213e1fc5a90180a580c077eacb"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.17/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0ccec6c741ec91e928f3dfe13bbd32603c2b4b3384d58c6e0638407079f14274"

      def install
        bin.install "oligo"
      end
    end
  end
end
