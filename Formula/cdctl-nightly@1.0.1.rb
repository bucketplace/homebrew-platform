class CdctlNightlyAT101 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.1-10"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-10/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3de8bdf5d48e11c36d6f72cb93631a1923750cdd2c8ea2093bc138225fe9e9d0"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-10/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "138dc4c5562f03d9ba0926730fdb2eea14c1a66174641da053f9bc2a9d2c7dea"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-10/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "36764c6bde36d4984f954fc1c2f9ac0e062170dd19ffe3f05ddac514e4c763cb"

      def install
        bin.install "cdctl"
      end
    end
  end
end
