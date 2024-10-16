class MortarDev < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "0.1.1"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.1/mortar-dev-darwin_arm64.tar.gz"
      sha256 "c20b85364df8771ba9b76cee12068d60b22583642903c87311f2137dcf8ce2f3"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.1/mortar-dev-linux_amd64.tar.gz"
      sha256 "caed0486709b0b5a4a47d684febd98b44d88e4beaac3862d60f0f69dde53cadc"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.1/mortar-dev-linux_arm64.tar.gz"
      sha256 "3f2256d842713f575c37e187d6237bbbbf9d21acbeb2ddb43b8d4f5dbd22d444"
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

