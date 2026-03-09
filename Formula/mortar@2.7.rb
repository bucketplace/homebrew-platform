class MortarAT27 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.7.3"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.7.3/mortar_darwin_arm64.tar.gz"
      sha256 "127e832f8aef691b8fc6f9653b32048305c7deea96f8370c344445cad5fb17af"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.7.3/mortar_linux_amd64.tar.gz"
      sha256 "74238ddbb8de613d350342b68c7f8bc4782ecb352a493fef4e7e62696b7f9957"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.7.3/mortar_linux_arm64.tar.gz"
      sha256 "e06c2b99f71314fad31052799af9771279a94d2fdd4db2c488d0566c25417637"
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

