class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "0.0.1-18"
  depends_on "awscli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-18/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "856abbdafd20b6773c7d5f15286f21e1ee0b9040321cbdbca66872e844b54fe2"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-18/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b2fb5849bb0300b5d8d7c9be90fb6851a1df1e0101f281f14870b2ca0f2912d4"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-18/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d9ea0b8c79c144b9f2200102d061ff5b62d9b7423181aa224f75e5568996cfcc"

      def install
        bin.install "cdctl"
      end
    end
  end
end
