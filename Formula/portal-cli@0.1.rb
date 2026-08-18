class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.29"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.29/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "549b7e6b7c0c08646f8a4e544fba47507920f637681769666906603ac8cf556a"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.29/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "af11181a501b908d5fa6bde2defe910671b4d8e8bd23f2ef9a95036cd0509087"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.29/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "39b11df1efb924e85ae802d6447bed2e6be21b06ae1cf605f385176b9a8b36cd"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.29/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4630f0d8d750c42c0125d96cb94db0ad870baeeead64ca7bc2443caf097e0775"

      def install
        bin.install "portal"
      end
    end
  end

  def caveats
    <<~'PORTAL_CAVEATS'
      To enable shell completion, run the command for your shell:
      
        # zsh
        echo 'source <(portal completion zsh)' >> ~/.zshrc
      
        # bash
        echo 'source <(portal completion bash)' >> ~/.bashrc
      
        # fish
        mkdir -p ~/.config/fish
        echo 'portal completion fish | source' >> ~/.config/fish/config.fish
      
      Restart your shell after setup.
      
      To use Portal CLI with your AI coding agent, ask the agent to run:
      
        portal mcp
      
      Then ask it to execute the user-scope registration command shown for its client.
    PORTAL_CAVEATS
  end
end
