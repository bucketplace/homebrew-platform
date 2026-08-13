class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.26"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.26/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5f76c0a2f1613a8068a29bc7db6229da5c4fa60f1472a3e1b23224017f3394ee"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.26/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a41edc8181e69e0ea52f25078156d674e2212c4c2a7bca4d764da080863e2c11"

      def install
        bin.install "portal"
      end
    end
  end
end
