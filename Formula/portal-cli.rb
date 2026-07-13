class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.6/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "06490d652d623bd87f8cfbef561176ac97b4c6036eec5951a6b1957cccc3deec"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.6/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "30c793ea6b21e1fafcb01619260f51609172142d65095f7be0c60c79dfa7aca5"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.6/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8b3a7a11323da377c8a4f2768fbc1fc1a2967e8d74d251e33140986ca66e4224"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.6/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1f0e92b923923af7a85d6ae02b261ca360a0b44a7c6794389bf3683452cd2e40"

      def install
        bin.install "portal"
      end
    end
  end
end
