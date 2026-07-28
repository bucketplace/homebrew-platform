class PortalCliNightlyAT0117 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.17-22"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.17-22/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f00904adc30ec25722c8b5f168d7829f7307c8e75b10341e37e187e94f94c513"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.17-22/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2f52596dce513f73288d8ad96af485c2d9545ecf2cf23d8af15db383705e1a60"

      def install
        bin.install "portal"
      end
    end
  end
end
