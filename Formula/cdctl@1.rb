class CdctlAT1 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.84"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.84/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5fcf2fd06a60f90eaea441eaad549ba980f216af8ee73193042fca625f76a8dd"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.84/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c6dbe7c4df8096a7840d914809c63060a2a2368164e37b6ce052a27014039f29"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.84/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6c4cd164fa866eff3e43abafc3baa547271f7c822f6236ac4e1a8c18009193e1"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.84/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0665801949a7084bc8c781b05244aa8e1beb8d1f24bf20429775fa6f533fc146"

      def install
        bin.install "cdctl"
      end
    end
  end
end
