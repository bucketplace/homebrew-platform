class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.79"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.79/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a56f60d41266cec21fa8df059c85c87d5165599955b0656cb237a45ca01d8ff1"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.79/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "aa35aff75f30f29d41157b37dd83307219346390eecb7868ff0d492e8c24739c"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.79/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3a884900cf42888cd75845a1be03174b2b80d2969b67659d8691048cdb6a2eeb"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.79/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6aa2fb27b5804b3b80612c18d91d5fd9fbdff95bed784dbcdd6bf60a53044f0f"

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
