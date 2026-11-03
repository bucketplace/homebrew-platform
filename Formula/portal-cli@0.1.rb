class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.67"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.67/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a4e7d952f1966d9d077334a53109f1a75a619a52b708995e89b1bcd33f0d4536"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.67/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "db55d095f457f46a8b45f61ccf49bd946b32544cd0d6f886f87f39071ea27138"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.67/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "458a8d81f276e92ae72c6592e43c246b4bb3ad5fd92b14aa70efbabf92aca553"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.67/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d6576a3945bf9bdd95926f44d3522f07f9a4bc1c806eb10c1c75cc075f997470"

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
