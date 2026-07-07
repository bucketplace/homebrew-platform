class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.5/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ace564fb9a996abc38846945457586c03d469d3879879a43cd66be3fd6ceb581"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.5/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "fe31c8ace3dd961172bc83a81b2cc7d6145a8e93efcc47e471509cb2b560fd1b"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.5/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c23f42dcdd8bd0db2faab06c8aa151ae00ef333e1b91e87dbcb275adbe7aed88"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.5/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f647799f45a80bf9812f57fafdb5ba443672a942489ddb5140fda9e7ad7f98f2"

      def install
        bin.install "portal"
      end
    end
  end
end
