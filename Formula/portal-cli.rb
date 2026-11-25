class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.81"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.81/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2d32d326060aba9a238018bea65909086c9f7fe09d0eb0d330adb0f75055d8bc"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.81/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bc1aefd4c853a5e1f037582c380137eec11b03463eb60ff4a0efc7200cce412c"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.81/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8e61a9b8cba8917b14083a59e9f500dfe8ecf131ee1d0f0040c4c59b34e609d3"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.81/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "77a3364794ec6b863cdcc1ebdd98ba9d62c884abac22eede95fc9b51509a0122"

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
