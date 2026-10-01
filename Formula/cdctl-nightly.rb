class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.78-46"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.78-46/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2a3462733a822d56cb446b0cb4d194f55fcad48f6ebb900caff2ee315a8a8bbf"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.78-46/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a39559c14290577d7b0d090c11731d75c8dd65f0a433d25df534b4e52f2bdd3a"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.78-46/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "31c2a7c5225305f043e0264a7c3b222753321bf62244d4258880bd555b715168"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.78-46/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2e77489ce0c2e55aec6d0ac6f1101c07970b8ffacb3c249f9b01050603da8c6c"

      def install
        bin.install "cdctl"
      end
    end
  end
end
