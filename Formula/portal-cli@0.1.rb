class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.41"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.41/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "82dc2b13ae2414c74c335e53c3f349b7d108bf652f54099778415cc21d57b92b"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.41/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "829b546f545d116cf4fc82e1355f22464299b10e0a2b8d7601a499b60f5c3075"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.41/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7237bec2876d03f306f9bc31640e7cd18c192d3b36ccf05c188e4a64efcb1564"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.41/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0e92264da4d292f2310716df0bedd4a0b453033b3ff13a5441daf860d34d7fe4"

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
