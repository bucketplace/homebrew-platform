class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.63"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.63/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b88b922e5543d1e6b18287416a2075109dc1570df9b0dd0446ecb7e22be63f06"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.63/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "dc9b2f66b643262c069c688f90b03bb4a202fd85e935b1c4fc01cda4f1873562"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.63/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "94267089fb07ad790cb4d814738e3e42f30c7841c02253ce8fac50508a7a574d"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.63/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1985d5d68c7cb96c1714df8a6e3937bb4ce1f67d104691fd096240d35ad6629c"

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
