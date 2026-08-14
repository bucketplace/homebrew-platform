class PortalCliNightlyAT0128 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.28-36"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.28-36/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0c94fd7b5410eec65a3df23fb80ba6ddecb06e55b5d8b276db2ac1878676a375"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.28-36/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b40cc862bbdf69b9b662955c64ad8ce1cf64f11da35bde32c6418605f33fd4e9"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.28-36/portal-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a07fc8d875ff34fbaf5987bfd7cc69cb24a07e1b1e4dd1a77d927a5cb1a393d2"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.28-36/portal-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "97e73fc2819e65eacc9d50197020df3838cf839d0d75b21ed1d9633a296f00e9"

      def install
        bin.install "portal"
      end
    end
  end
end
