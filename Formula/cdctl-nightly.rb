class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "0.0.0-11"
  depends_on "awscli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0-11/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3f23c665e072e743ec8f6d27847c7b740ef5113fe32733182b4546ad84d878df"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0-11/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3436d7e23fd4de2e1554d17d20a8bc0b4588bd87a33ec7f4133c6848bf4a8bd0"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.0-11/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "912f4cdaf9a4855295622c7db55d850a18d0215e3d632ddb5adcb150b64cf4c3"

      def install
        bin.install "cdctl"
      end
    end
  end
end
