class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.30"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.30/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ca36d23dd7abaf4bbf76ae6d683b2bf87ea2913dfc096367697a163c4cb713b8"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.30/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "410d3cbde8f9f0b84859b95ac48131689870f94152d05ea3fcc0a2e15b160212"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.30/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ad8d5d2a3615073f6519462a0d49030c6c61c6a80d32847ec9ad11d57da831ae"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.30/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7f24c34f52e24e561990aa933f02e09151d0315694643993d0fa26d771d75589"

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
