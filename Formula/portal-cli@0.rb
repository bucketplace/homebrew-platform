class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.84"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.84/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f2deda8f5adc0567b5fafe86a224c803b303a926c0ceea3594489b10a33857bd"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.84/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "94f6611f35eec41090192c9344b2fa3056ff988cc0cff02340681ed916924ea4"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.84/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "09194338ce8fbb54b5b52e82a5239f2914707b6823a69b38f9806888d597dcdc"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.84/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5d706a10897f4e9b1db22641c2e63557bed1c1fbaba69fa01ee45b8321f438ef"

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
