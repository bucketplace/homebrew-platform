class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.78"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.78/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6fa68b53de1f1c28145867fb9d27706ab0b0fe13e024f5626d35a3b33b9c2009"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.78/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8939ef6debb0624c243c93d9fb5c15f95fdd5d45a87b658c92a2ca43db46b98f"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.78/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "52d91b3a39df3d8311b377149f011e5405111f18932e2d9c014810387c059ac5"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.78/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e721b680bb146f83951d65a0cc4e47dbf889d7eb23af4f4185dce0a6fabfec51"

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
