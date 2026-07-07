class Ok9s < Formula
  desc "k9s helper for ohouse member"
  homepage "https://github.com/bucketplace"
  version "0.0.0"
  depends_on "bucketplace/platform/portal-cli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.0/ok9s_0.0.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d436c77a7f7d4038f80f18ca2bd2f2de9e2d23e43171a4999d1b09730b421d56"

      def install
        bin.install "ok9s"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.0/ok9s_0.0.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4c3a2838084d8d6215bb7d1e3022bd111dca508b15e64785880f681077da2ec0"

      def install
        bin.install "ok9s"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.0/ok9s_0.0.0_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7d4420f8279dde2a21f4bc9c98fd2218655f9b59ece22a01e616a2e3a8aa529f"

      def install
        bin.install "ok9s"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.0/ok9s_0.0.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4699269a61b9fa5239ff4a57d3ed32893aa34253840609f0c26d1fab625b0153"

      def install
        bin.install "ok9s"
      end
    end
  end
end
