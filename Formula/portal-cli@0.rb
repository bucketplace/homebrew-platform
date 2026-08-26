class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.35"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.35/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0cf90e3d7c0f1e33fefe80d43f0444346a84d8e43f6afdd75d917cf5dde9fdac"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.35/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "09374f00ab32bd589d92d7640f73533ca40dc54a2c96fa80765dd60b414c3939"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.35/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "12e22d2bace2637d3d9ba2ca58cb36ada161f28d1f31a75d294e68f8a7d60dce"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.35/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e6415f92bdddb1b9bc291a5ceacdf5657b251369448af681b800be5aec9e4dce"

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
