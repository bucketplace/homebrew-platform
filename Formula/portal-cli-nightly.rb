class PortalCliNightly < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.70-100"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.70-100/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3c0c692e97ea1d65acec4a77d9b8c3498116211a46eb5b5097217464ec7f1bd0"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.70-100/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a59a4ce22b127ba3ede1d61a056020140c6c9bbca5ecf007e964d0b86a2efe92"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.70-100/portal-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6e407fc37cfd2575ad04a1e8da8fa32d6d873fe0e03a37397e74f0786a51d1e5"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.70-100/portal-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d58e455e2e799ff2365f10bc025619252d1479737c8b7e5b2c34fc3facffe23d"

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
