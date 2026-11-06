class OligoCliNightly < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.0.0-3"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.0.0-3/oligo-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fb580188592c3d8ea74a263d442f54bf4b4cc62e862351348b4725a41daa801f"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.0.0-3/oligo-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e148b82c39302957ea3a6c50f01717f65cd7a29f9ddeb18c3df52b60f9875052"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.0.0-3/oligo-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "35830343ea105c3d0bbe3c487ddfd20e88d75840f5eb916fac9f49b6d5f8cb16"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.0.0-3/oligo-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3fb15bb5bce365039a3fdb467d9127cdae7cb1926b71c7d2b7b8f6eb38307845"

      def install
        bin.install "oligo"
      end
    end
  end
end
