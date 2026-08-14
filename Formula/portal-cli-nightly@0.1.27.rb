class PortalCliNightlyAT0127 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.27-35"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.27-35/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4c1c814a9d48c92fb7d5e0e68fc881e28030b1433b8e3d22973f664614361d0f"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.27-35/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "79bea0d7bda4adec4e907afeeaf4637447dfb8c8bcc84b0edb02f584bb09a198"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.27-35/portal-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2b9502ea9cd846bb0b58597426941eb413feb85bfad87f62d747723745b91fff"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.27-35/portal-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c1a7f630c79e8ee8cd922e03ff500de13c90cfa62b8aad0d2e8db3e7fcf96160"

      def install
        bin.install "portal"
      end
    end
  end
end
