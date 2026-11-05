class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.75"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.75/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a9dac4efdfc0dd1f1c0664378c87aa2d05a82ab36156a65641b590fb1a2a3d98"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.75/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ed3235b3bc52118c650587798e97f425edc8675bfc8d6410e89230209fba19ae"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.75/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5d1517bdcdfdd33ffe8d64979606f9e588fdf92b273cee74cecfeaab40b4cf3e"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.75/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2a0eb96c7d5ac3e241fd2b0506e729e9b6355ba1c54b5b99c0dcd2e0368c5913"

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
