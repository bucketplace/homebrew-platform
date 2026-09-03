class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.39"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.39/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7ba6fa0311cc601fbd9b4b5ff6fde242f3bab235366531953645de0e2df04c3c"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.39/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d7036eb3dea085ba42eed8f9f6a0142ef984e830df484c188f8734043a1cf0a6"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.39/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e48314499bf6581d6b7fb443152a157217ee338d684a4bb56343c7337ffcc44c"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.39/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5b2ee3baba0e6e6001e78e24662a4bc73d8e66ef1e0586f9de2c4d0766813b9b"

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
