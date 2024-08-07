class MortarDevAT0 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "0.0.0"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.0.0/mortar-dev-darwin_arm64.tar.gz"
      sha256 "df732ab59990f621f7492df04d12a2d18426e04b40fc5698a12d2aef9f3069d1"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.0.0/mortar-dev-linux_amd64.tar.gz"
      sha256 "463adb1356e2aeb5a5717196fa505d842cdbd0b03f0cea17a39a2de0d85bee27"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.0.0/mortar-dev-linux_arm64.tar.gz"
      sha256 "d172bce57da5edaa680db0ffb43a0a1d9925d298c00997ca9f083222727c8f90"
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

