class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.60"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.60/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "736f717b7cc1a77358b3c79d47e45f7b5615e4aa23b57bdc5b32e32724cb8201"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.60/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1723427ca6bdb3e71837f79373e6a56316db86819352c8ea6012bd622d2ffd42"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.60/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "aa73bb69c116b32687755daccfdca3bb7a9810dd277575b4fc9d48c57d7c68ac"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.60/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f8d8672da3b872de121c520c9319fc5b757a097e658a4a2d7176532fb909f77f"

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
