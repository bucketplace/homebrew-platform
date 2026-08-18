class PortalCliNightlyAT0129 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.29-37"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.29-37/portal-cli-nightly_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "386312a9da3d8ea1218356434b5ef6c72741985196083c1b77f576794810ee76"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.29-37/portal-cli-nightly_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "18409a09dd3ce8e713c548d75d7db0c54ee5f744898e069afd808ce2fff17597"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.29-37/portal-cli-nightly_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6e1d32697270975771c8e31e9020bc88194c070a4518d1ca379668eada035467"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.29-37/portal-cli-nightly_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "285f837f5b91cb54e04a7fe615f62712e0785c69f49159d00a4dfa7b789e07b5"

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
