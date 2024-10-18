class MortarDevAT0 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "0.1.6"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.6/mortar-dev-darwin_arm64.tar.gz"
      sha256 "313ed3eca732e9faa9ae41fe0625840deb43d4312fd4f331ad914d6dc7f661b3"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.6/mortar-dev-linux_amd64.tar.gz"
      sha256 "82e1faad2242d6affe3af4ca5e8d7dacdb0c109163696ab81ea94c757b3b97cf"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.6/mortar-dev-linux_arm64.tar.gz"
      sha256 "f360c8c005297f234071302e33ade5cd04a6699a3f4d5e8f92cf2b03f448db8b"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  def post_install
    system "mortar version"
  end

  test do
    system "mortar version"
  end
end

