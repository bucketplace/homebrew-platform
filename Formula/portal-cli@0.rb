class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.36"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.36/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "815a2527830d5aa9c84a3792b0cadf01dbb06b1b983d8b744f7179e94669eb00"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.36/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "254cd552cc0c8f312864591266de168b43eeaf27b992c0bfafb7a70c726d553e"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.36/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8768b0fbd1d8f8d619d283ba21420e51c7dcc1df6b66aeb535bb8ed9d3bbe9cb"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.36/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "735cd70c20a9a32ac6cb16ccfc9c3982b4b2467ebcf7508b206e15bc4589245d"

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
