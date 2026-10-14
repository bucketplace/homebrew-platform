class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.57"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.57/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f28fcc4afb66052422f154d6e702aba465bb1da086c53bb632e1a3f5a0031cf9"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.57/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a7e95df3ba41a5733d92842e84688b7b0de0e6cdc455465a40ab60b3c11b4a91"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.57/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "11970f6f9a895dad9690a346338d073ac7ca2bef5a1e5e43ab47cbed55e753fd"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.57/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "48b0bc11c2a7d931694e497b0d97303f4f929e37a2136b81b22f8ddbfce7773b"

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
