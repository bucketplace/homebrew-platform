class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.1-6"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-6/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "31df3256d0849217702a031699eb213eb9310db9e86d9344669eeea0028f7ac0"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-6/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8f68e6edea5dc85921bc52491278ef60f6825e50e4378eaa232d710acb39b1a9"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-6/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4cf3ad215d82eaa31ca0915d5e0a3635affeffa448633d0f735b09c32d7b369a"

      def install
        bin.install "cdctl"
      end
    end
  end
end
