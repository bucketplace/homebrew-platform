class CdctlNightlyAT101 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.1-11"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-11/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "856deddd4434d0df2895df64a61b96eb1da75b454e318b3663208841f2868c15"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-11/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "43ee23e466358c3f40a159e6b940cedd4a6ba9d2cfa91fdc8f9b1ceb47d41087"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-11/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e51c23990f5c0a8e11e1f081fca448ce6b26be36f8f9692cf239ab364b344332"

      def install
        bin.install "cdctl"
      end
    end
  end
end
