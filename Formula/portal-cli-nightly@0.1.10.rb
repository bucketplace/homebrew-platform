class PortalCliNightlyAT0110 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.10-17"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.10-17/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fe14f3125ab944c0a77280467aca6068f0ee556645a528fd6745a0cc9f6edca9"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.10-17/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9ad65a8cc90b9e67f371a20f4ddfa7ce4fa59a331ef0dfd77cb2a5b58b6c86d8"

      def install
        bin.install "portal"
      end
    end
  end
end
