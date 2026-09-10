class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.46"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.46/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "77dca07ff3a59121aaa2a7a666fdd383532d4cc27cc8a3f73c0b9d96b674f5cf"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.46/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f8100386a7c6cb43b0491d4710c83d83c3be2996e0cdca0914285c1602c18592"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.46/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0d8c25f42cc5c23b00bba154c12586024013145865731bd6c1d42bf78b195792"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.46/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "52a687e3c95ca4227fc5442cbe42ecc5c256205a1e344d1178cb34c9cc5039fd"

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
