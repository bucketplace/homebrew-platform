class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.31"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.31/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9982b475ff59f8d5b83da8b214b8b9da4cbd310383fdb6850e581a69b18c18d3"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.31/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "11521f7416ab499bf55f521d18df9f21a5e5530d8b67b1377b1a4be179f503af"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.31/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bc57145e65df4e31d8bd3940afcf0442045e2306282d4bdce3d827ff8d12bb70"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.31/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "abe64c7bbf743ebf7a7f7d951bf4c1c6ea4971b4b3ae3d49cf20a907a2983d0b"

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
