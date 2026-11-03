class PortalCli < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.68"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.68/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "716db57185bf6fd9e90833cb43e42b6dab93a0c7bdcb5f6faadb5be5a5d87ba5"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.68/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "287d8b329f2fe8ef5b317912dc731429d91e9c365c6c5354ee6a1fd1fbe9837d"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.68/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ac98e91fc110841290b485c915d02377f9ffd0ac9a7c781200a2cf947212c0bc"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.68/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "67e59251394f60b69af18a4f66ae4ac4bf2f5e43810b230f334583c1a77e27e4"

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
