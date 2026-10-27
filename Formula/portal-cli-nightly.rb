class PortalCliNightly < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.63-88"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.63-88/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "22be087d7d80a9329c8fa1f3e11bd95106f026e06a9235002c9a5b8a1a639536"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.63-88/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "86cbd75f82ebddee38b2086cceb50021cce8521d52cdbf74e6c6d2c87c786222"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.63-88/portal-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "dd0c20f8f0991994b953226067db9f1cd622fec62a402b3ad8ab116e0949db94"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.63-88/portal-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1b257a6e1e37d512757145f41b896fb407cdb837c8e81fdf925b4a93321bd0c8"

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
