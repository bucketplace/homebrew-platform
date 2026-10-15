class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.58"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.58/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b3e3e3b1e4344be02f39c9da36ab802ae11046499ab8abd455688af7a5b5e9a2"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.58/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "24aa04e543106b4683df29bb717d34e715f0e8c3f02768b50fff713dc2e575db"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.58/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0bb980f5aac2bb072b384c6d35118f48986dbc7b533359c7d3c10b1da7b6137d"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.58/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "906b8d2ea7bd16718fe784a447e143d381699d1af3577b6f4e1bbef11107b565"

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
