class MortarAT26 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.6.6"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.6/mortar_darwin_arm64.tar.gz"
      sha256 "0570c8d523d58cf126ec0445dab5de8214d28f15ed14c12febda2a095233dd4f"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.6/mortar_linux_amd64.tar.gz"
      sha256 "19f4799a77d14838c1513e3291a73729547514c14e9f89a56cb281c935535c2d"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.6/mortar_linux_arm64.tar.gz"
      sha256 "870be10d4b65bac14a69b315270b8960ad3be0bb1e4a4d0fabcb8cbf5210c093"
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

