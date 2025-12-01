class Mortar < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.6.0"
  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.0/mortar-darwin_arm64.tar.gz"
      sha256 "3c79a8d8e65421169a69231f9a2785c9cd068a26c8c88d7efa9959f23b48cfc0"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end
  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.0/mortar-linux_amd64.tar.gz"
      sha256 "535e3650eabdb052f1b25e5c2c09bc940538c4c8ab6cbe3b4ea0974b74cef379"
      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.6.0/mortar-linux_arm64.tar.gz"
      sha256 "c0afa93e3faf4e87224b7f354446268f119366268119b252c564e10d27e4859b"
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

