class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.71"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.71/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "840f41526cab4ef50e0c948c88bef670636d62b0a7f5dc43174bc3d1dff4f520"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.71/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "eb87b1045f235b391052f9dfbb78290c49964190722fea3e278ca488b687dad5"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.71/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "77c7499bd2ec5931c7f8db5bc273511c9ff9dcdfedca1a2d41f00270c89b6e69"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.71/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ab339dd58a64b5cd8391b0347b6277a4e0fc3d65982fcd6ba8a0e1fbba89a8a8"

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
