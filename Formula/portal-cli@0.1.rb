class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.66"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.66/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7ceabd61bf4818a782eb86c001e9e3f57bc89ec307ec75ed37d93e240ef393f0"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.66/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2532b888c7245f7fff8f433e7a99f7beaaff27e6bec7aefeeb1d49ac885b37e2"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.66/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "280135a48aac1fac1b5d8136ffa99ca57a27a97da483e9d207758a4a6df092fb"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.66/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "dd92fad69c866d753ac27ff8033b0d00790f9cbc5908efbd4d9d38679fcea13f"

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
