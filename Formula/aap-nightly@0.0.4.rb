class AapNightlyAT004 < Formula
  desc "Agentic AI Platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.4-9"
  depends_on "bucketplace/platform/mortar"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-9/aap_0.0.4-9_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f32afb19c8559c1d8a9ead01eb8db97c32412c54a7908fc2a01bcc10258b5431"

      def install
        bin.install "aap"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-9/aap_0.0.4-9_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e51845f950c806802d843ba01cf056fc64b924e01ace3456d976e80db7838ae6"

      def install
        bin.install "aap"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-9/aap_0.0.4-9_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "65d67106dd56f963c4d3ec83b566dd0d433225829e147b320faebc3112948e5e"

      def install
        bin.install "aap"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.4-9/aap_0.0.4-9_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a42135a459dd8a671a7794a453475b0ba20d516c5574b62bc6e650b10bc5aa71"

      def install
        bin.install "aap"
      end
    end
  end
end
