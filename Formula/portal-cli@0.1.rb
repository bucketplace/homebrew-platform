class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.42"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.42/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "dc3c15f08a63e4e5d90f88558bee2e20671998dda63cb33618d03e2342fa5168"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.42/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8aa7471df702824acd79b33d1475c92a8a73be5256a677ed620c43071d41aca1"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.42/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "32b86f2c600b8f3259b6a000e0a402fec34f973da84f3c69821c6f596bcbe571"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.42/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "05829db5d67b74587086592ed795a1f48f0f4c81cd0fca6687442dda7d9a94b6"

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
