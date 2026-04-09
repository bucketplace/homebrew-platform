class PortalCliNightlyAT0_0_1 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.0.1-11"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.0.1-11/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7c9588568212d0c47c41250f038ce15bdaf1b64355aac73e0c7a95ea556e0da5"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.0.1-11/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "cc26b60c0aabb4885af1b9bdce01b11fe823f8828fce075537280ae955bad7ed"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.0.1-11/portal-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bae0087ba66d4129d6a051f96f56e5fc439636aa1f2064d969d47b42599a8a50"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.0.1-11/portal-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "74e8562502bb5a183af937f317c5bb11f21bd8d50f0a1ed628f435d233c53f19"

      def install
        bin.install "portal"
      end
    end
  end
end
