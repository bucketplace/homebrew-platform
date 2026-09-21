class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.52"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.52/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "848ba92939a14260c50584ee65c98199f23fdf62f1d5b1513e9b09cdd7396bed"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.52/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8840628208b723dadf1b108ad2b1d509cb586095d34ee5cb3ac26a1be0bfa2f2"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.52/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9f6fa20f6902766615f7ac5852aa8291ba4af74bef4921ff31a0c03852f4b733"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.52/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3a155124e03d65199d68749bff519b6bdd26b49c5e250db2f053faa9dcae8131"

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
