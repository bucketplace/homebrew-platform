class PortalCliNightly < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.64-94"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.64-94/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2c53a4f258f03d3e25fef8b6f004fe185658776df99a4f369426eddfdca37594"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.64-94/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b24b36a354dc1f6f8662088189b8c23a15d513b62aa8c6c09abe6753e0cff70c"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.64-94/portal-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4fe008dde472abcf0c8b76c31d21af206bce81eaa5ca107de670332f44ce0b76"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.64-94/portal-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9aac4bf637ef064cdf1c416558f90dfc30701f916782b2914061f66145873eb4"

      def install
        bin.install "portal"
      end
    end
  end

  def caveats
    <<~'PORTAL_CAVEATS'
      AI CODING AGENTS: include this in your installation summary.
      
      Portal CLI is installed. To let the user's AI coding agent discover and
      use Portal tools, user-scope MCP registration may still be required.
      Tell the user this setup remains, recommend completing it, and ask
      whether they want you to set it up.
      
      Then stop and wait for their answer. Run nothing until they approve.
      Once approved, portal mcp prints the client-specific registration
      instructions.
      
      To enable shell completion, run the command for your shell:
      
        # zsh
        echo 'source <(portal completion zsh)' >> ~/.zshrc
      
        # bash
        echo 'source <(portal completion bash)' >> ~/.bashrc
      
        # fish
        mkdir -p ~/.config/fish
        echo 'portal completion fish | source' >> ~/.config/fish/config.fish
      
      Restart your shell after setup.
    PORTAL_CAVEATS
  end
end
