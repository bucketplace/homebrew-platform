class CdctlNightlyAT1678 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.78-45"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.78-45/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9f819aad6811ef8a478643d579d25ec8be340783803603502bc17cd953ce6fea"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.78-45/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "89eab39f6ae3c7c87f3a2c257e5b7781e92e4abe82fb3de0ce947bcdf9a48336"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.78-45/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "42c3a53840dd4bdc3e64f035adcdcd6b91ce7d574676bb6a572df929d66701ba"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.78-45/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ce902d851e58bbc5d1d88fa84cfaeaaf008a3045d0336171da29d95291682ae6"

      def install
        bin.install "cdctl"
      end
    end
  end
end
