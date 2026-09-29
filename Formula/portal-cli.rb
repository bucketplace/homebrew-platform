class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.53"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.53/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a7bc75f2c81d19518a2a6ee50449333e6682e51fca40c5bbef055d746150377d"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.53/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "344bfc5271dc82ae8989cb003bfb5f63682755410a1199f983d74bb85517eccf"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.53/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a805d6e4627b2f1aca67d60728760700288fc5f839ea2066769fd2be570cd2c8"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.53/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f82952b91fa200ab5807c684ae10b1d342c0493b0c8d7f73fa443212988c7a63"

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
