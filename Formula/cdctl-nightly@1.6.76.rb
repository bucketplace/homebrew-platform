class CdctlNightlyAT1676 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.76-41"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.76-41/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a6cd1494596681f79877f7065d01d950763b55592b70c7be24de8f8189ddb6ff"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.76-41/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a88099007432275736b3f95ef6de45f8aa6b5e44f62f1c3c3cf979a5d18510f1"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.76-41/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2d0cf1b2bd9c9a5ceaa9bf15ff8febfb21955f7a182ca36cd1544b6b82d6452e"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.76-41/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c2a48e7772ac19f3b62fc0e664555cc999324c3f66a47d06d0475d7b500b2fe7"

      def install
        bin.install "cdctl"
      end
    end
  end
end
