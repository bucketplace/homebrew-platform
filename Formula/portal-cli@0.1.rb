class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.65"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.65/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "03ed0d9ab75e4f41fe58aeb032f544fac0e85ead7158c08b1bc571e5d1f41f02"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.65/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "dfae09152cd1b15a387f8cb2c4deeb8ec0d717cde85677e7676cbcd08f5aee21"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.65/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8be3a0d9fe18a4ae66caf6b74abe25b16c267f01729228c3bbd77e715d91e05c"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.65/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "12c0f7e4805334dbaf13241712d6cad35d81d82597bb98468a9abc295e7052ed"

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
