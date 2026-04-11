class CdctlNightlyAT100 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.0-4"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.0-4/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "99a7305e01f5f6c6aba160212e937c07ec63390664ed3d25c0f2b9ba869ebd93"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.0-4/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9dc9d2cbf5ee1932630c059ac05c569650e7e4a6efdbfeb752cb717911ba8a58"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.0-4/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "023a1df7688c05388571c5cd8d6971fa3f64d842f12c4711a31c85b370ed1543"

      def install
        bin.install "cdctl"
      end
    end
  end
end
