class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.49"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.49/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f7aa02a37dc8ba6f72969deabe70c6a92b6ce016fcfaaf549642b3f8c00731e0"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.49/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f6dad024fffa4845141af519fdf6196ede97750aeaf5460fdfa856efe4d0d3a9"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.49/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "73885330ec89f3d8ffd3ce2dfa28928bee9fed0756f8f5a291f1ebc0dc0628d3"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.49/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4408f1f1dc3a6cc22349b5a66fd88769173b34f5118f9bd4a28ffdddc8f9bf6c"

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
