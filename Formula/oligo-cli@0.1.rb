class OligoCliAT01 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.26"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.26/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "05a472223dcbc933a72a707cf33e3c02e3e3cc74d35b4345ca0ba75aa244f32e"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.26/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "285f22e1d141207ba42623b78f55f92ee5dbeb631bff912418d25bcad48e1865"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.26/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7b1ee07f45fe4a5bbdf384a97803e9793d46320e7eb3b7e09f0b4ae358c0fd68"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.26/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "60412c4039786e1bf19d7467cb0bc4be2eb5ccc18d810b1f364c06fd9c4bb0ec"

      def install
        bin.install "oligo"
      end
    end
  end
end
