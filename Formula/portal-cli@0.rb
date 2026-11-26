class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.85"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.85/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "52701447cb6bca7f90e82bf29fc93ff9c48d4fa57621cc0d0dfb24d46eb09471"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.85/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "36ceb573d90f45d0c641ba2091f19e3d300d964df60e2d6fddb52e6979172618"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.85/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "50135f42cb81f22eb5f58b570641d9f4767224ff6d91b4c09efcbaf2b2fc7590"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.85/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a169a5bf5989bab0f61e0a1eaef19dad48f40359a86e0033e1b10d2b5ca9d8e8"

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
