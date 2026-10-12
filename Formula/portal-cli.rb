class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.56"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.56/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "63135b30a0b0891bc570868243180029ac30d2ae2bd52e8c1ae24fca3aae7a53"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.56/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "fa1ad25f8f4d3443862a6783867f9916be8bb67cec18cd5c0d07c2e535594ed5"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.56/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c844586f3f8b8386fc65d38304f06db220e5015ee6d5f92c1e2706f5bf5d4af9"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.56/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "89d1c79381e8e3503fa40875d357df2912e7bf75d179d4f87c1490532fcdf98e"

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
