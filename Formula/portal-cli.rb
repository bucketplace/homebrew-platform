class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.74"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.74/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b2d8a8e2482bc5880317e81f01bd7de39fb60aba420470515c086cf103d93aa5"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.74/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "77392c60bbebbc3c6baccd4bdd468407a83255cbfc46f0a6c2bd5c9f9ed3e0c4"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.74/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f74b301638b54c8552fec5d9e57c6a780ecee454d51d76cabbc7b14be67facc9"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.74/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "23f496ac36b91974ff70892693e8c74c0810d5d1de536939d12553d9847c5398"

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
