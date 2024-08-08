class MortarDevAT01 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "0.1.0"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.0/mortar-dev-darwin_arm64.tar.gz"
      sha256 "894c581a8aabad4002e3718364168e6ea448e88d75f4f578f1a78a39dcb9e4c4"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.0/mortar-dev-linux_amd64.tar.gz"
      sha256 "e70a66eeae1a0a5d582999f1ce8b64e78b75320ab47915be0b41f518c3799b69"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.0/mortar-dev-linux_arm64.tar.gz"
      sha256 "2a783c47ba39a8766875efec21df6783b013dba4a4586b7c61fb56f9f1fddd57"
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

