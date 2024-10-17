class MortarDev < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "0.1.5"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.5/mortar-dev-darwin_arm64.tar.gz"
      sha256 "2590f968ce6e1077bd29b73f380c7cc9971687da33f5266fd654c7368d4b603f"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.5/mortar-dev-linux_amd64.tar.gz"
      sha256 "af129bff34810e6e14550fffc1e7f5375f50af6d40388026e4f7b90d122f5b81"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.5/mortar-dev-linux_arm64.tar.gz"
      sha256 "04c56a7a536f9f2c73d1421514eac291296523ca83509ad549e50dcde2f5d312"
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

