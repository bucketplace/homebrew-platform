class OligoCli < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.6/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "39cfa5ca6db92d0dc8b93ed6d27611f80edb7491996a6756853b4c5c155895e7"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.6/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e58cc8c320adbe7ea498167d19b28ed046bee4844f0616bc131d6588817177f2"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.6/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "eecdc9fef513ffc99f65a46709782a6f2db46d6a384c0d5c08cb2dcd2f759481"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.6/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5cfcd1b0ed41ab05126d394435f35c91aec80b452af2c48b8bf55155d197c7ed"

      def install
        bin.install "oligo"
      end
    end
  end
end
