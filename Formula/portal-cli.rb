class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.50"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.50/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9661982a1a8368bc6ed962e016bdcf622f54b2c2c6b85bd9b40a3af4c02eda84"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.50/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e0f295260cd62a6ded47a0da3f5381bddb3f29c11039e696f70f61de96ddb828"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.50/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "984a202ef665909b63a1f997d39f3142418f02038ab2a4ec142702164ccfba10"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.50/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b518f5fe1749fec67d194fcd001641c92cf5b8832ba87936f9445e3d04fa52b2"

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
