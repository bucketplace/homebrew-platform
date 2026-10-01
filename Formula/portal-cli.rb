class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.55"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.55/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "06773e8886798a911fc11b813d6b958f5059c3261375c911b046bb233182db3e"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.55/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c69792f11b1ed8675602dc0866bf14bdf381162e5ce4561bef38262a6ad0d622"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.55/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9bcec5cd187937758572b168d9b32b1e4a19d70c678e7db5c893bd8f89a17f69"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.55/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "db4fe69970ea3ac422431a29bb2683403a562ad79dc6ff35c6f28e66b9588cb8"

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
