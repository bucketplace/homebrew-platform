class Ok9sNightlyAT001 < Formula
  desc "k9s helper for ohouse member"
  homepage "https://github.com/bucketplace"
  version "0.0.1-3"
  depends_on "bucketplace/platform/portal-cli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.1-3/ok9s_0.0.1-3_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2d3b8a1e6e9857a544680204d3717c1b26aeac990c54f7357fcdba3a0a5eecd1"

      def install
        bin.install "ok9s"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.1-3/ok9s_0.0.1-3_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "84ec429c357c486b655a416d5454d71e895c06c7e6de43777a6683595486c5e0"

      def install
        bin.install "ok9s"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.1-3/ok9s_0.0.1-3_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c3e8d19f6007f7c187c33121c513b7cafd351db267fce8fed7e97c0dae31b2ee"

      def install
        bin.install "ok9s"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ok9s/0.0.1-3/ok9s_0.0.1-3_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2600b6cbd5945fb8461d5d8dba82fba3a6a591240783a52f10826aaf2ff0f769"

      def install
        bin.install "ok9s"
      end
    end
  end
end
