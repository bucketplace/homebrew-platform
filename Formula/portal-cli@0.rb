class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.83"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.83/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7d5a4bf9d9c1ce8f0ce41d37793f3c447f6dd1ccef631ae8cb8dae552c599029"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.83/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "05bf0b2d3845b4a679bad8ad8d4ff1f61cf416812bf7fe9d355ede400471221d"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.83/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e8fae24edf17c5731b96ab19e79a9658fbd6b3d390487c70b36e0d3a091b1b30"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.83/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7141c368cbb12e873a2852c008d1d27b5bd55d9b53999b602b51a52e66052be0"

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
