class OrcheckNightlyAT002 < Formula
  desc "OpenRouter Usage check CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.2-6"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.2-6/orcheck_0.0.2-6_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c2e10ec51b3415a8d587abfffe3eabef57abebe45c9c45b4f6ae1e96d49b802b"

      def install
        bin.install "orcheck"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.2-6/orcheck_0.0.2-6_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b1a3ff3049326e6a1dfa2983265e926a03276d53298681f8096f40614a624c0f"

      def install
        bin.install "orcheck"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.2-6/orcheck_0.0.2-6_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9ccecdc39f56eb1e1b497f7236fee1abe77949d9be34a1279d384a569ae9b53b"

      def install
        bin.install "orcheck"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.2-6/orcheck_0.0.2-6_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7f7a68c1d75a65eac24fd999b9b50fe1c6ba5e4d7bd2d8ef98bad00079594e60"

      def install
        bin.install "orcheck"
      end
    end
  end
end
