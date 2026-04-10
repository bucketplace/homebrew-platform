class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.3-10"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "cafb5a3e702fd638009857419e75f4d874df0e203f84feef8ce9d4b57c32fa28"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "596a9b68687e4d28a1f136c2faf84b595b9767ecf9eb5a45315867120af5e0b1"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d3ed5dd8e56921a57f0b5deed4db10e2bcd81d534916d9e93919589519448c4d"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "654189287c9b63731fd7597ba561e6e97dce15d29bc6ef2e7945c7d75ac831eb"

      def install
        bin.install "portal"
      end
    end
  end
end
