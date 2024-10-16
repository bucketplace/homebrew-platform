class MortarDevAT01 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "0.1.5"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.5/mortar-dev-darwin_arm64.tar.gz"
      sha256 "045c43d3b0022da6b54e7e73d4a3b8c854dd620299f63cc70f316c828a870244"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.5/mortar-dev-linux_amd64.tar.gz"
      sha256 "c3fbe7e04585b68df7c187c004edcfa389cc3f8933a5939322427671f0c41882"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar-dev/0.1.5/mortar-dev-linux_arm64.tar.gz"
      sha256 "5ad8ad6c1db409d60645a5094a5f5dc596a4c86d378ddbba8fc7275e0e680cdb"
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

