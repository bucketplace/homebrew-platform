class PortalCliNightlyAT0180 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.80-111"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.80-111/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b85262397aa752774055263ab8c65cd95aeb2a97c3ae92b3059484d32bab5507"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.80-111/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8f9cf3a14e4f597c4e2b349edcbe0f0e88db59e79e9ea0056c88a84d872ba401"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.80-111/portal-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "31891920676f162f26364134a22ce495aba81deea701429e3a5abacf96dc2cca"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.80-111/portal-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "598fd2d52fb38c8c7b81cba1bec6c7f1f5a48a990f3c5bb41450e3bbd0214ba9"

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
