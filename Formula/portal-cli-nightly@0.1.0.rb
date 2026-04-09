class PortalCliNightlyAT0_1_0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.0-5"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.0-5/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "354e140ec0131911cfa06e14ec55f8234e64b0eb04f7676b13097e830d845251"

      def install
        bin.install "portal.exe"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.0-5/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6115822c99afffbd264d3f9d237a28062a79bc8e4f9da6b75d4c031d952ad6be"

      def install
        bin.install "portal.exe"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.0-5/portal-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "73d612eb6f1091f701d91260e70cdbdede6f0bd8bc2242f56ecd76ee700dd7fd"

      def install
        bin.install "portal.exe"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.0-5/portal-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2d3ccfd7dfbb1a4e6066c7fe4a49996959770215d23ff1e2b2edb900528a71b5"

      def install
        bin.install "portal.exe"
      end
    end
  end
end
