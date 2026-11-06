class OligoCliNightlyAT000 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.0.0-2"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.0.0-2/oligo-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "429958be870b6f4c192f69ee33d3a6a9028a8e90502d68ef1ffa3f421a261d72"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.0.0-2/oligo-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ca15c27eca6bde88c8d2e0814fb74ef55c71a811d814216fae0e65710a34da43"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.0.0-2/oligo-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "65fe9742feb640b4e595381414c65538c2abf609d4fae44fed4c402246578160"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.0.0-2/oligo-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5a89a4ee9721faef14795f894690ca2afef144cebd3481a6a6c097207c921578"

      def install
        bin.install "oligo"
      end
    end
  end
end
