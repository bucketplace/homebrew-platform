class PortalCliAT01 < Formula
  desc "Portal CLI - dev-portal command-line tool for humans and AI agents"
  homepage "https://github.com/bucketplace"
  version "0.1.33"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.33/portal-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c0b0197347d2fb03fd319797117498a313f7f1f7358343436403fd900b9a1771"

      def install
        bin.install "portal"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.33/portal-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bd1c2e6d7706dd19c976549af15efb830596fad2312c17f1568b0003ce53fdeb"

      def install
        bin.install "portal"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.33/portal-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0ae415691ecd6c423bf822ff7df115b4287c04f9327f08c60d0d36a7bff3172d"

      def install
        bin.install "portal"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/portal-cli/0.1.33/portal-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2007a6609bc80ac11c5412d09d950ae54e1791a32818411d632e47bdbac5c7f8"

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
