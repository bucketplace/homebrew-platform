class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.34"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.34/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8d3056613c6ae4edf91693c919454d152c7ae30c6ca82f0c0b0383eb28b52f9d"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.34/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "801d487c01e11d6ecb7ecd2350ca7465a69c232eac2a3249188487bfb47744c7"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.34/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c16f77b4b5027fe795247f26f0d84c5d1bff27e5f30dbe9727e7ce314bc21845"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.34/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "09a1bb22d874553741e4ed5cbb5391d05537e8cf7d43d5a2a1b019d893a764eb"

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
