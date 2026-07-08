class Ok9sAT00 < Formula
  desc "k9s helper for ohouse member"
  homepage "https://github.com/bucketplace"
  version "0.0.1"
  depends_on "bucketplace/platform/portal-cli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.1/ok9s_0.0.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6cb1edfbea7d84924c81ddc9c7dc1f84ffa4270551b6627cdc005100421e94cb"

      def install
        bin.install "ok9s"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.1/ok9s_0.0.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "09dade7715161e95dc660827ee3998e518f16d945e0db4b307b86b871132d27e"

      def install
        bin.install "ok9s"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.1/ok9s_0.0.0_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "dafb3b8268cbfd29f7f15997b4bea75f1d7d076db0aa3f037c6f7c10ee3f0b9f"

      def install
        bin.install "ok9s"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.1/ok9s_0.0.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b9073647906e0449113a3d5639295663f448f313f5071aac5bfe659fd14b11ff"

      def install
        bin.install "ok9s"
      end
    end
  end
end
