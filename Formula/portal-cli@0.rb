class PortalCliAT0 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.43"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.43/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ea7146c12870b99306d271923383c6859465e5c1fc78816fac3b5bf751dd0d78"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.43/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b6f4fd0c86f12a3ae5bfedecfc3d3610ed4eed685eb2fdd0d3bb828f586ddb61"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.43/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "00f5cf4f2f8aaa663d1d8a56646da2a8e6adb416a34f07a0bba0975e30ba47b3"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.43/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7f8879d68050978534d7c748cf21485f0fe1b1be89ee13a7e45cbc90f97c575b"

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
