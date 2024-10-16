class MortarDevAT01 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "0.1.3"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.3/mortar-dev-darwin_arm64.tar.gz"
      sha256 "4275ba759b747c14f5e04f572e4bd3babcbd5233629afbc44cb1adbf4aa63451"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.3/mortar-dev-linux_amd64.tar.gz"
      sha256 "919284b9d7e7c8b4f3b280fadcb828a5acfd38c3f5626058fd97f0959930a29b"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.3/mortar-dev-linux_arm64.tar.gz"
      sha256 "92b261ef8d181d4a171b9d44149089297f2b1f5f3df644543a603f196b6f2422"
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

