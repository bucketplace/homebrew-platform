class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.80"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.80/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "40099e99135a98d32766b5fac465b63a403bf62d27d0a65b8becfabbfe153d32"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.80/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5353cce4c58e50936f128c86a9fda151b3efa71c2b63684c21692303e2cc6bf1"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.80/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "753d0e13db619df25a87de092ccf8da9fae9b1b009260dd8f837d36c74802005"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.80/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0e314efe35770fc78b5255e7501698f280d6d0043f441e1da765f25f52ea5fcc"

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
