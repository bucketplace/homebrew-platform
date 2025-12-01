class MortarAT26 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.6.1"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.1/mortar-darwin_arm64.tar.gz"
      sha256 "02d97a66b65361c79beed6214ef5927ee983840be3c930cf8675ad68779320c6"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.1/mortar-linux_amd64.tar.gz"
      sha256 "a339fd4541f037e5a7d019dfe651dac34195bd6b9ca6eaf1ab94ecdeb099f1ba"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.1/mortar-linux_arm64.tar.gz"
      sha256 "c67ec9e49846842dfae8dd8599c355685a246cd51313a88c8e6bd5f5c92aad18"
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

