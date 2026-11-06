class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.76"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.76/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b1edb80d36728e147cb833a77f879a9f994e72e5952ff55a6d8de9f6a9d40125"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.76/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "81483c2205a07b3bf93da80eb8e5e0f976e797057009544cde9b284f048f5522"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.76/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4bfe1ea0ae7b8880704884b762846addb51facf4d8167cbb0dab8a16247b6451"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.76/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a6399b76f9a4783d9658ab0418ba524b182b835d112bd9e1a9ca5ef42b0d3657"

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
