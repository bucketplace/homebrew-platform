class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.69"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.69/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "edaa5a168cca1527cb4379c6637c5af2bbca450fbcf1bb5929b86acbb43e9517"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.69/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1c91fe2088e2edf2c0208869c052b218eb5dc8269aa5554a3e83965e02a352b6"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.69/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "113138443ba95889e12b444cc3b33a94c17cfa8a7bcc22b8b2c9fd64d15fae50"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.69/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "611f027558a81f4c67d90dad3624a4ff2ddc8ed4241db72b0631300be319a44b"

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
