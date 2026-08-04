class PortalCliNightlyAT0118 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.18-23"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.18-23/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a9e50dc9d436e26d34aa9315268e8767aa0000d9de0fca1da46e47fa9abe82c4"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.18-23/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "93cb1610c83b9c262700ae830f5ae9e4d5109a6e55eb6fb266a9822315f5abf0"

      def install
        bin.install "portal"
      end
    end
  end
end
