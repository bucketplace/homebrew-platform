class MortarAT2 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.7.1"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.7.1/mortar_darwin_arm64.tar.gz"
      sha256 "2d56131a1ca26b9a43a428bdf9d170928622a956ab645dbd72783b2261a07da2"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.7.1/mortar_linux_amd64.tar.gz"
      sha256 "a8dd21e99419e34564b532a84af149335fd84ba84303d9c53c8dc7c9584ffa35"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.7.1/mortar_linux_arm64.tar.gz"
      sha256 "54c2e8c4f699501a159faabf45624c156614df4d58ee71f17e2a6119e9a65764"
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

