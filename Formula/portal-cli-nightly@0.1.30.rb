class PortalCliNightlyAT0130 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.30-38"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.30-38/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "31d606e5a82249d44c125c9d8126c85923e24cd3a58a1b01b59679f12ff68707"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.30-38/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "156a9823998ac7f6990f2b4bcd38904d5f97617414058b0b5cd35003fe721fc8"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.30-38/portal-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "64653a455e216421343a0e9b832b903a28bc576812bde083755e48cc20e27946"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.30-38/portal-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5d7602ae4ba9f5f56883378567fd80f1a4fa3d2676753a8fbe59614baefdf076"

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
