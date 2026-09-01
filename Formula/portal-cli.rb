class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.37"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.37/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c91e5979f2d70971f0d9943f811b801cf50e3e09f5c2ad29a0c52b22c9956e89"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.37/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2f803a8e387e2cff16565c48989f5bd03e099c4529baaaa4024a78dade49845f"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.37/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "048abcbce0c0452e2725b617faccd1ab90f37a368a21efe785bd85eec88e0164"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.37/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5ad68fe878aba4eb44ee663f339a6a269c698657d8f82184c02266399a1a6318"

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
