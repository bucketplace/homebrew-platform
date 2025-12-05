class MortarAT2 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.6.3"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.3/mortar_darwin_arm64.tar.gz"
      sha256 "5d8a5f6184db22c4840a18353f8c3b02d11dbb27f5211de0de8eee4ed4b87154"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.3/mortar_linux_amd64.tar.gz"
      sha256 "719b6c0dcbc9d9bcf62ea252f87d6573540cf1bd4b1c1bbe0875dd47e708ec0d"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.3/mortar_linux_arm64.tar.gz"
      sha256 "6bce9d8ed4d2614e9b2391a50f38546571c18335f295a5c38bb99293f4d7723d"
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

