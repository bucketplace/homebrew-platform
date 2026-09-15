class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.48"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.48/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "262730fc7779062dc5b88687c4b74815ec8c26d4266af5d41c8e188fadddf1a5"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.48/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c2f6877ac18af8808116b3dcf99ef4041c87dd54c616ca4f3c8ba9ad577e459a"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.48/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e2ee1c96c3e7ea47b0dbfa604452d8f676db81630bfaf2164e2e97e1e4a67b0f"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.48/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6412e40b927c716706f0181018485163ba495cd48a0801447cb02851a0d1d546"

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
