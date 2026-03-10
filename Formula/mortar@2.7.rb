class MortarAT27 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.7.4"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.7.4/mortar_darwin_arm64.tar.gz"
      sha256 "4d7d7f904b2ab65e62b71c17d212ce171366e7dac4a2351eef0481e31bffd5ce"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.7.4/mortar_linux_amd64.tar.gz"
      sha256 "2f9fdf3b7264521b3cda58ead10ade47741fda792181438d3b208d065415f5d3"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.7.4/mortar_linux_arm64.tar.gz"
      sha256 "5b2b8133209c3a5937f9108f20e9957969f330f8d77fc5108779cacf88c7b522"
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

