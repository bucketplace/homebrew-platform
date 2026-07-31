class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.0.4-27"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-27/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4b5114cf69e9c2321cd3708212f4afae011b6fef8062c2eb91014a7ab11f769b"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-27/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "dd97606b5458f856b56b110063e5e078f184625336ab95e3a3f3d50c1c14968a"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.0.4-27/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3dc72d9b1655fb33da90b72c72aa191bd02be43f3679b847b4eb483343f575c1"

      def install
        bin.install "cdctl"
      end
    end
  end
end
