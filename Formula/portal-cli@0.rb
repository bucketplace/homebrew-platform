class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c89c55219c45fbd9007c8f3ea5f17bdb8ab53aa7689671570511dd235344c5e7"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bd9d5b24290eaf50101230ac55f5cc456f782e061480a8dde411b2872b235281"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3ef076d438bb87bfe7a3a1e03795cf941025b10072fbf9d5f57c959c2aa9ebf2"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.3/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b0fa4409044ad586116b9b34cfd7bbd6619b99f1cbf1c45e3b6f8a0a0ad4ab2f"

      def install
        bin.install "portal"
      end
    end
  end
end
