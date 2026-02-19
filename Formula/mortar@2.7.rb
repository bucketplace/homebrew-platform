class MortarAT27 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.7.2"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.7.2/mortar_darwin_arm64.tar.gz"
      sha256 "dd667ef61a468bb348df134bb3428991cc224f9727241d4a18c742a8d6343489"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.7.2/mortar_linux_amd64.tar.gz"
      sha256 "1b93058c34b54d98a1a7838af4c8d19c2951eff675c442791829332853e2d89b"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.7.2/mortar_linux_arm64.tar.gz"
      sha256 "126152721c082dabc27aabb6977f7c783c29c198d3520ec6461d36dcafea43b4"
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

