class OligoCliNightlyAT011 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.1-6"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.1-6/oligo-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1b768f09f30f8945f972955820459ec212c4b49022fd0b93c2c6c1b8ccd1fadb"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.1-6/oligo-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "200cb20da5b2d9e7ad361e4edeb8ef1244d9e48b80c17352347c46cbd46e9353"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.1-6/oligo-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d5d7a22ba7b3cb9663e97458cca788895ae3d6e7eb4b0a426c4f29c9bfe845de"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.1-6/oligo-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e1e16bdde766b34c0dd2e67c1c7ab2e5bd08840865d9b26aa2374600bd1b1dd3"

      def install
        bin.install "oligo"
      end
    end
  end
end
