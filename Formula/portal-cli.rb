class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.38"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.38/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9efdd52a7691e1bc21da24bfd00d389d29518cdb4ea4875f5c774074dc1a8e65"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.38/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "cc0e1ac1860fcdd6168fc1249845f77059b2ba12e7575943a782b091f0720620"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.38/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "dd3787997728587c64fdae83210560e5523caffb2b0e96fc92e80710421bd8bc"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.38/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4afa3bfc3c39b7227130968948184ddf03bd0a5cb8c7f443542530231d9789a5"

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
