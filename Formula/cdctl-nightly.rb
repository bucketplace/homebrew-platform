class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.76-42"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.76-42/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "69262d8f4f346d63ddd350455b081d77adacac4af988be750f0d6e1bab01c07f"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.76-42/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2b7e04242212c14f97f32bfaa05657f7bd4d2dfa8647596075710907d0ccfe5c"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.76-42/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6ea19e0cfebdbff1c8cc99a9ad4b1eefa31e4d7691c0013976a46ebaf6b455a6"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.76-42/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b676b9a7699cb4a3d37b1cf343b42c3ba32cae67b4247637d4360dc14a5d05ea"

      def install
        bin.install "cdctl"
      end
    end
  end
end
