class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.32"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.32/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c3eca72198c540f0b6181fc379a2de1798a5d7a829a39eb42f0be8434168e9ef"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.32/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "69143145b93767733377e8205a151f31d8ab24dd9a32c3c5a0b9f2ee794f14fe"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.32/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a11f7ffbbecb34ca3786aefd88fe10d6370a0d3b097cec584565e223cf4d6260"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.32/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "45deb8b8ada15fd672b92b254db19b57ef38f293ffb1e6191e0eca1d373f86ae"

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
