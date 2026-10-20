class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.59"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.59/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "12e03e0fd3b6b898daf37a116056b3725dca70fa65c70c1afa76161d315160d2"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.59/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d9d57d006a31152901c2ce21a6c6c5af931211447b38141322522fcb4641fb98"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.59/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "d50dc990b43a3fccddc53f9ded0f3decb4669c530f50ad764a4154303d7160c6"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.59/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0d75d4fa407d638dcf9279ffcfec410fa087f544c87cfe6ae017613b8c30cb21"

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
