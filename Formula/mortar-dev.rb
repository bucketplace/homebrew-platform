class MortarDev < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "0.0.1"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.0.1/mortar-dev-darwin_arm64.tar.gz"
      sha256 "414adb07fe6ac5bb2e96931245791fd04f5bf97ada5d247db904b2832d903e94"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.0.1/mortar-dev-linux_amd64.tar.gz"
      sha256 "370d98e594ab2a8f47e5e8285f85cd7c13c07bf5db18fff4f7e9435a44b6ed56"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.0.1/mortar-dev-linux_arm64.tar.gz"
      sha256 "b2036a7f8b48da765d7438990c09f54f486cf67a95a8456e20b11a5b1014c1bb"
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

