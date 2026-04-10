class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "0.0.1-22"
  depends_on "awscli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-22/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d51f2ea17d084fc43c6bde3282ace574b8273c5ce8735f3b6d1adc225cbd7b31"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-22/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8158d0f7d49fdecb2623dd22918e2ac118361eaf08ace766cec24208fd2fa4c3"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-22/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "caa0599135903dd4b5df0832665a891f5826a1df950537ff2f01fcdcf9cba725"

      def install
        bin.install "cdctl"
      end
    end
  end
end
