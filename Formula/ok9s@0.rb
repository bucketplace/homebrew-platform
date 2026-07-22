class Ok9sAT0 < Formula
  desc "k9s helper for ohouse member"
  homepage "https://github.com/bucketplace"
  version "0.0.2"
  depends_on "bucketplace/platform/portal-cli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.2/ok9s_0.0.2_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e7a698f9102ffd1df6e903ce2be7b1e3358d9a5aa6097be2defb819be4b1aed2"

      def install
        bin.install "ok9s"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.2/ok9s_0.0.2_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a4cdc37b8c318ce0bf39cd616bee45c4eb8500057143e214ca7ea3f302f37827"

      def install
        bin.install "ok9s"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.2/ok9s_0.0.2_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3f57325688506752c3dd09ca0348908e7a6b05e75b2c2943c98328f8bb005503"

      def install
        bin.install "ok9s"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.2/ok9s_0.0.2_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0092fafc4f6ac057532fe6c4cdcfeb01f7943ac7351aa1f2ab0a7ea1af7b8580"

      def install
        bin.install "ok9s"
      end
    end
  end
end
