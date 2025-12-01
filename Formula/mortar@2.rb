class MortarAT2 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.6.0"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.0/mortar_darwin_arm64.tar.gz"
      sha256 "1c43c3636b1b5c998f340aa953a8a3525a2a68be23012fda32b1594130607849"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.0/mortar_linux_amd64.tar.gz"
      sha256 "9a56681de41ad346418e5578502b8a8c1141dab0b11395fbc6c8348f13323efb"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.0/mortar_linux_arm64.tar.gz"
      sha256 "3d6b2b50c21c77a50f89c9a8f8ab1c26aef19f3a9ece0a9a84754f546ca28227"
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

