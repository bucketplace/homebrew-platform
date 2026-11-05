class Aap < Formula
  desc "Agentic AI Platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.5"
  depends_on "bucketplace/platform/mortar"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.5/aap_0.0.5_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "aa1067aaf017eb00719d4f1023cec869f3c57d992b08a5961ecca4035df4b892"

      def install
        bin.install "aap"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.5/aap_0.0.5_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "43a785e2b71ad06757f7b257acccd6e4f0ac80a8bbd9d9f5775774b9fff72a06"

      def install
        bin.install "aap"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.5/aap_0.0.5_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "87260c10cb87e786b08cc02ec3bbb6edebbd78cea3a9d3f4b13d254f4950a37f"

      def install
        bin.install "aap"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/aap/0.0.5/aap_0.0.5_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fd9591767d134555424e29ee54b322be777b9d2610c0712a4c89daa0b1715ab2"

      def install
        bin.install "aap"
      end
    end
  end
end
