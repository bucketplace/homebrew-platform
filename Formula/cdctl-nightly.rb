class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.6-32"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.6-32/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "847912d33a5735211c3dacfce0a4ac67e05d3292b79b7a5d18023cc57d4f7ec9"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.6-32/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "fbbb7822329a20e32f7c41adb8a321563e72e3a7c4bb2155fd19cc6304526467"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.6-32/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "06b38414e2a916cebed8828a745ab4d637da7dd0d60c1bd51e281f182bb2b209"

      def install
        bin.install "cdctl"
      end
    end
  end
end
