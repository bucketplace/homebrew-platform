class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.1-7"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-7/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "cc406924fc07f8f8fc5068161c651cc88c1dd28f52cf13f8b50e60132bd67fc2"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-7/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8c08547e100abe478d880ce0c547321bce3cdd8592787284ca8e83b0efe5903e"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.1-7/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7ee662b7aeca9a7d6559b12bc70f16a390d447278d4675b5ea3f31fc6147586c"

      def install
        bin.install "cdctl"
      end
    end
  end
end
