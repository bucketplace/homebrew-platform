class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.54"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.54/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c0f04d6fb84ec22bdb476fb2e895836ceb28e1d55c5e1bf5fce75b40a1a3f659"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.54/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "17347e280c896788faa7b193e14f369ac1746198ba03d0ca8cc4b411b181edda"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.54/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1ad64597f0fab327e65d853d898455c65096d1bb16cb55c162a7a13aa6418a6f"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.54/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "db3dffc35ab03bcc18669ad2d2ff647cafa3d5bc400b71c5f0e5c087577576bc"

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
