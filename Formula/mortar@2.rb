class MortarAT2 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.7.0"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.7.0/mortar_darwin_arm64.tar.gz"
      sha256 "475083284589f19a30f17f83561985c36cea7dd19dce12e447c2a4eb080d0b0e"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.7.0/mortar_linux_amd64.tar.gz"
      sha256 "229e31a1a8a7ac0a5773969ae541ac5b6edf9fe851f15cd4e3045ad20d22ff22"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.7.0/mortar_linux_arm64.tar.gz"
      sha256 "0ed624dd8571a21d06dfd5c9cdce6bbc053c1bbfb2847197abee67c1e2495d75"
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

