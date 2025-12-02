class MortarAT26 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.6.1"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.1/mortar_darwin_arm64.tar.gz"
      sha256 "94237eefa9756c01896a480ffe209b9ab4f29c41b4564bff0bcce14c38d2a9ae"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.1/mortar_linux_amd64.tar.gz"
      sha256 "c6e7a138e69ee2bb1a6621887373836d51338d2eb8c5b117cf2b08d3abb85e66"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.1/mortar_linux_arm64.tar.gz"
      sha256 "1fcd399701ab9fd9c059ff05ccf9de113ece17e925cf268a440fa337d5c5b7c8"
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

