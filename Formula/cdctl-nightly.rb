class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.1-16"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-16/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0f9531941da9e390f60aa2df5e3467b945543c1c6043146c4414463a3a6cbbc9"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-16/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8b0ad2f31d62bd0067c60bc8fe93f9a7f1bdd9e1f702980394055b2b8398b37a"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-16/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a09e5ba4c3b238eb518e4f420bc9776233952633ccefc06f686881c06edaf462"

      def install
        bin.install "cdctl"
      end
    end
  end
end
