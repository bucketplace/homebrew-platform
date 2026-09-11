class OrcheckNightlyAT003 < Formula
  desc "OpenRouter Usage check CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.3-7"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.3-7/orcheck_0.0.3-7_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c7a89f229ae4cc2722aaa286e8f6900f3e5c12093c3f257f1100d8e82527fbb8"

      def install
        bin.install "orcheck"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.3-7/orcheck_0.0.3-7_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "12729220396a8f04c56264a9fa8cd33e8659378e6e2093ab8298a570246c0136"

      def install
        bin.install "orcheck"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.3-7/orcheck_0.0.3-7_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "750f3ce461ce388f74d63af2559a9102de0f3652e64b75f4a15260f84aeb1d90"

      def install
        bin.install "orcheck"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.3-7/orcheck_0.0.3-7_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6f4f969cbf3efe866bd1fae4ed99af21e923bda8c8bdf405a20c1e3a338fff20"

      def install
        bin.install "orcheck"
      end
    end
  end
end
