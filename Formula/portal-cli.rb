class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.44"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.44/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b3eb0386d42e6f270651243e6490c5c3bb18bacf144992788696c3876a66c708"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.44/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "47593751453b9edb7f40b33b2e17fc837d15e073633ca8bda8067787af66ad13"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.44/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ebe5da99b8e1c7d6970e8ca8a48b11779d4dbdd8e18a6fea496c4754863b056d"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.44/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b4bc67dcd8792e02424c1ec0b1d23672e105194b956bed21846146cfe38db993"

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
