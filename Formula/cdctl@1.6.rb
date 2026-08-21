class CdctlAT16 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.75"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.75/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9626f7190e7232efc42798268dd0c43c5cb70076d3e859499010510d7470e304"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.75/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "57065f66def886bfb292aef98f1182eff4be657c6d74e291c5ef0b1cc495842a"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.75/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ac5fd1e3f93073f4d3e37f67ec87df1233ef1e04e6e3acdf0c4e320d2a887409"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.75/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fdf6f28e555201e42b7f6b8ec6522ee4812c9394a886758cd5ce1da2ba331149"

      def install
        bin.install "cdctl"
      end
    end
  end
end
