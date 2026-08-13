class PortalCliNightlyAT0126 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.26-34"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.26-34/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "979785c40510134aec7032f1b246b4ca6dad53b82f47b093066bd3528cc1741a"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.26-34/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "39e1543e5af70c79e67b27711465fd1fc0458068594ede97d9334474f6017e93"

      def install
        bin.install "portal"
      end
    end
  end
end
