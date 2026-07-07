class Ok9sNightly < Formula
  desc "k9s helper for ohouse member"
  homepage "https://github.com/bucketplace"
  version "0.0.0-2"
  depends_on "bucketplace/platform/portal-cli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.0-2/ok9s_0.0.0-2_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0c97a214a827342a7ad0e90151ca329cba44dbd6d4d98fa34ff2c9bac3cd2d88"

      def install
        bin.install "ok9s"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.0-2/ok9s_0.0.0-2_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a5512e86d982ba75be678f5626ad551f50ad01d2a0f39f4711e1c32b6604339f"

      def install
        bin.install "ok9s"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.0-2/ok9s_0.0.0-2_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b160a14a044c2b13ff63417bf4fd38f55f561eb96e65930ba8658fa836424593"

      def install
        bin.install "ok9s"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.0-2/ok9s_0.0.0-2_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2b7ff10972457d1872686abad6bc988b61727b6b682da0a71f263d2e8065c827"

      def install
        bin.install "ok9s"
      end
    end
  end
end
