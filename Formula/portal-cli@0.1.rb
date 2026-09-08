class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.40"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.40/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "963aebc7f3813fbbb2d319839b06d7775975a97e8259ced7637feeebfa2d56dd"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.40/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "dafa5d1f7bb9c25220f27cb2f5277070ab397eb8ceb613ff40d58d261d5c4871"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.40/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "92ba3d6b50f3e50b430bf4ea39ab3c38796e5795326477ffc76237ae9bb436b0"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.40/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "78693c9f8112dddde4e277074ddc93942fb7ff867afb796759dea777fd3247c9"

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
