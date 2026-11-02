class CdctlNightly < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.80-49"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.80-49/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0a9b7e73d3d80dd9769ab9215d1fa0277803380d8a8751e5deab738f52debda1"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.80-49/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4801a041383f2cae15981b1769f46df9f11a4948d47fdc3bad45952392a3a4c7"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.80-49/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1104975add52cad93fa21689c2893095ce3d8dace4c6d8d0e5b852ed0eebc200"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.80-49/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "047cc21c68784555dbcb00ca7940de9d6fed4e6be97f378582350315b4848cb4"

      def install
        bin.install "cdctl"
      end
    end
  end
end
