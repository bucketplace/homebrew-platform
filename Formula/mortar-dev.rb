class MortarDev < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "0.1.7"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.7/mortar-dev-darwin_arm64.tar.gz"
      sha256 "d925e3531f5004435bb8888ee9371431ea0dd49ef90535fddb202b87e72ab6e6"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.7/mortar-dev-linux_amd64.tar.gz"
      sha256 "61faac5970e7ef1289c3fec05b16de86b244ed77e6d36ce814013594964da33d"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.7/mortar-dev-linux_arm64.tar.gz"
      sha256 "b3fe8062de9aabf6333f2985202736d8da24a1da26a619ee866119180ead5764"
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

