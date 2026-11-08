class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.77"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.77/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "32200513567146ea95d4d75428da122864147a6ada5d684739a1ecb3ef1d86b3"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.77/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "eddc7440538df3cf193041488ac8fc0ed38fe20ead9b3db8570ebba5e3c2c4eb"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.77/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "37f98d7c7c55d1e484d082112f9ac61d50c50678eb0233d57dfc3a878e4635cf"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.77/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "15c1891959eca1065c05dd3a44ef992cc61974c371be896e9e967255157637b2"

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
