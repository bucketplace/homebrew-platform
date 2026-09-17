class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.51"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.51/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "427925021a1f142e2e9d77bcd80404ca348e3a64a36162398ee684b09165badb"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.51/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ded69a9f369bb90c1cd898beab1c1324097f3cc9d4d428c3648a6155cda3662e"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.51/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7288addfd5adc5337dc73192ed4da8f7fafd6521e44ca8ad2bb176cf57da720c"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.51/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "abd1dacfbcf2b3dabd4a606c9d983ce997027e2360d62433ed345299f737b313"

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
