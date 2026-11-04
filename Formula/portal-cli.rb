class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.70"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.70/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "92787933c157cf4b5c08e4fb810ccfd22ff7e605f70c57e8aed6a8dcedac2eae"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.70/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "db73b02ad148f36a6cbaf7d369ff24be48e300f305791a5f30125a3a7b4a6ab2"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.70/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "62f2af2d0cf7e5e9291e68f8a8882fb593cd0f0b169e2f18647690f4c8bf6a4a"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.70/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "37803fd9c6b8474c6f0b284ea53297724b96f21eb5d28c443b102376ade38e90"

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
