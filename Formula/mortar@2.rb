class MortarAT2 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.6.2"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.2/mortar_darwin_arm64.tar.gz"
      sha256 "efc30a1f4d09b725dd4782369bb4298a505d3e747855b47dd9e591cbf1e56f78"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.2/mortar_linux_amd64.tar.gz"
      sha256 "d1e5fdf91e5187d1daf6ab6734be9cbe433fe498fb5440ca61cc1488c9883913"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.2/mortar_linux_arm64.tar.gz"
      sha256 "c9463fe30856fe7f7f86f0a1205ae788b25713358fecc6ebe4ec95c5c548ab85"
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

