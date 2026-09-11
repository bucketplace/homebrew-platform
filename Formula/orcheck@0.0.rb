class OrcheckAT00 < Formula
  desc "OpenRouter Usage check CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.3"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.3/orcheck_0.0.3_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "95ad6e2b577bee3f252701e59e13a917491832f01aeef2e4ea48bc7b97ebdde7"

      def install
        bin.install "orcheck"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.3/orcheck_0.0.3_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bc47aee20b199339e72f0598c4342ad53a313d7afb18dce5f4388c48faba0774"

      def install
        bin.install "orcheck"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.3/orcheck_0.0.3_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "fa740cb18695d21f2300c602c92e6b8443126e587f8ea1bf6f55f096312521be"

      def install
        bin.install "orcheck"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.3/orcheck_0.0.3_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "87b584caee43cb67cf216ff18238d5848b65b0421591bd74f10802516586c96e"

      def install
        bin.install "orcheck"
      end
    end
  end
end
