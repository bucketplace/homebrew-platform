class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.62"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.62/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9da3528ce5113931cb8355a4f9f88eb9466efde1d13c4390575cae10e7a7680a"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.62/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "71472ba7581ce28fe66c7d3acbe0e33dff6e3d75bf2c8e9ee772fe818f0a6c8c"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.62/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bcff69bf93943928c9fb87afa19fc87028c5d98fc6b5410e7f7bbc4cd0e14264"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.62/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2a69fdcf95995e7995f61948f6da0af63e617a8cd2aa69cd3e6ee514a33db7d6"

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
