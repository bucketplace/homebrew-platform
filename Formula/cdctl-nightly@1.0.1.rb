class CdctlNightlyAT101 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.1-5"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-5/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a976fbd14a6c594b54e5ee85cd486b34cf36423684a332e00da48ff3883a27a8"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-5/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "50ce8ad458eb41abf4667d90a15a065c182af62cecabadca15f3d73232fda3ec"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-5/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "16f3bdd7bbdd6e733374bab01745485cc8af33c50ec597aef86fa6901f1eb221"

      def install
        bin.install "cdctl"
      end
    end
  end
end
