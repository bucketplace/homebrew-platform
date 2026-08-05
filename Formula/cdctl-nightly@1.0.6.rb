class CdctlNightlyAT106 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.6-31"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.6-31/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "329fcea4e388f2eca3c74eb7564bbfa1a8d1d5102bdd161caf8510aab7ed64b0"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.6-31/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7035dfeddb4b2a53134db40d88cca19944536ad399b49de03b5559d308d68de5"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.6-31/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "98bf0f8ae0d415d0b0ddcec231d1dca368070f1aefe21fe024bc24032ac13da5"

      def install
        bin.install "cdctl"
      end
    end
  end
end
