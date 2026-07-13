class PortalCliNightlyAT016 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.6-13"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.6-13/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8e1c3caa186ff03ae440e8d83665f0b905eb993c9eec858ac205a4b52794c85c"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.6-13/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d6f595b9183837efb95ac46e16f781dd91d5a61854b95fdccc7ff97fc4a57350"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.6-13/portal-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "acf8cd4fc54df2cc9e0e4b522cc454875b4f00f99248d5d7eff09ed8bf682f30"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.6-13/portal-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6effd734fefc9c3e711f6151c88c863fc4f3264985106be608779fb7c60ec6b8"

      def install
        bin.install "portal"
      end
    end
  end
end
