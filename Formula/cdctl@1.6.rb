class CdctlAT16 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.81"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.81/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ef535b34c2025ad6df4f0cf613d6d0ff1f400a45311ba41e5bec991b79a4936a"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.81/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f77cf98455af2d268315f4cf0e823af0e3add6878ed7a708eefebd58e1af4923"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.81/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7f03598210a82e7dd7c952d9da637131140155942806cc3627983e0f8a758efd"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.81/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "175b03d4dd9f9174e731d90834bb067f997e4a64691054998c0f957f4ba48ac0"

      def install
        bin.install "cdctl"
      end
    end
  end
end
