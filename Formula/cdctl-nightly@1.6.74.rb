class CdctlNightlyAT1674 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.74-39"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.74-39/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "09be25fd577b91cd917a963e406620fe31491b525856b708a6c5cc2207e80997"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.74-39/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "775ed8d935d75bdeb597b2b7df26c45c2631b47cc048cb765524a0d512a4bb2e"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.74-39/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "67ddd68076b5a9911223f536e94e5070cbf04248a2687e430d3e35d2e46a13f7"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.74-39/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ff77617a4b0b994e44aa24cf26f3aff46452be4e7c2d7cd4ede1284f5bf98bbc"

      def install
        bin.install "cdctl"
      end
    end
  end
end
