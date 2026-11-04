class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.72"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.72/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2a913fd35ab31d73a8d51788eb160d588d6b1b23f99f50660d6944c20e94ff49"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.72/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2f9fc7bd6c3712b8fdc863e933ef08b3eb85453744fa35488d77f98be46dfd16"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.72/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f6163bc19dc49816be1d7ba30fe916904b45aa99f395ce13501e9cad5a40e915"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.72/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4e43d6f785d5d4f3b7ae1d1022c340ca98b7cd12a0b83d0b3251df5ebe551366"

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
