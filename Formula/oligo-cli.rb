class OligoCli < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.7/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "04f69c720655b92d68626dd7ea4a5ef7efc505ab852a3e80ab51721dbdde845d"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.7/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "508d4c556242a00c76bc3d7520979341ad470c09db4ff56c5102d33931962c96"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.7/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "00e485491506ea8e8f7f469778c2df4707e3f722f3a8e77fb38beb3654e0e31a"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.7/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ee3be6172967650404b2f97b91dc91ecb2fc1a3aea60dc183ce6590a98bfcfa2"

      def install
        bin.install "oligo"
      end
    end
  end
end
