class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.73"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.73/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9f64adbdd86f1ea793f810b0d816588ad83c6a5335a9a80986aa927dd6e6e9bd"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.73/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "15e0226ed9f2b09692e2895b6788c8d89323a40d9a2feb7b548b3e2c67b8a34b"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.73/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0d5664cdb4c5ec87da9c855d83ebdf24dac4a4ea2a3ea7318be30d82a688b4af"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.73/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fa0e11c53ef4b248cd20279c5da1f36cdab4baf9d0e086d9f3c5839e8da783e7"

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
