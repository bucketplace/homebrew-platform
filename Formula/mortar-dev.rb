class MortarDev < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "0.1.4"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.4/mortar-dev-darwin_arm64.tar.gz"
      sha256 "a3c3d588baf25be12b2bf577dc78fa213dcdfffab2f1b75794ae5cb4602f3688"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.4/mortar-dev-linux_amd64.tar.gz"
      sha256 "898c8e0ec2ca1b7ec228af7f49b5b1314f7aa01c56299ce609e7cf2edb4ea42e"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.4/mortar-dev-linux_arm64.tar.gz"
      sha256 "59b431bbfc95210a757d5d56b097e65b76a3606f84822c8e43efe3d6a9a0e68e"
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

