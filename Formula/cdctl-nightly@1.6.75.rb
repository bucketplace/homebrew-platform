class CdctlNightlyAT1675 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "1.6.75-40"
  depends_on "awscli"
  depends_on "jq"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.75-40/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "83b47f7c43f68d9f71ae847f2e69410fa3579e8230a01f57eac84fb7c92cab96"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.75-40/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7fc4835935716ac2c89845689b8b1aac0e240465875754d3dfbcbdffb537d425"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.75-40/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "165fc31ce17e71b4abbeea7890861ac2abf0ffcb70eeebdaa1c689b8372bbfda"

      def install
        bin.install "cdctl"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/1.6.75-40/cdctl_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fa89ef519e3273c9abecc3870aa8fc1239710442f92821b8287faf334d69bac2"

      def install
        bin.install "cdctl"
      end
    end
  end
end
