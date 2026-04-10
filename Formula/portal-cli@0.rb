class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1e99e2562acfb5a1b0a5cae05769a0c08887d82e6bd924c4e9e014233895e664"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f389cd6c7c2bb37768cf4f14ccae3cbd7a46f2bb499159865ba452c38a136d11"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "923a289ced1152184742843085c489b8cdf9f7c1b24d99b675dacd8186afc184"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "99f9789ec7162f25890681a7cb66f2487d662c85d05d65c89b75f764fccc0f50"

      def install
        bin.install "portal"
      end
    end
  end
end
