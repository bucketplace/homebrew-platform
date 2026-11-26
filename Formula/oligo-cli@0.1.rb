class OligoCliAT01 < Formula
  desc "O!Ligo CLI - open O!Ligo apps on the latest harness"
  homepage "https://github.com/bucketplace"
  version "0.1.25"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.25/oligo-cli_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1326c9aa4289b2bb448ddb5b906e91c49f1b0bfd3fb44a1a9554267ca4ece4ba"

      def install
        bin.install "oligo"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.25/oligo-cli_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b7fb0f670cfa3d3ea4c094e3330731deacb035611c1cb2f03c78bbb95cefc70b"

      def install
        bin.install "oligo"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.25/oligo-cli_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6310921838943d257f8f600d46c595e99e5ab5f08d3f1abacb3c9e82ec8d570d"

      def install
        bin.install "oligo"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/oligo-cli/0.1.25/oligo-cli_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ae4aa3e03331fa98b2c76374d20fea6a0f483535b5c0ada5358a511c38975ab5"

      def install
        bin.install "oligo"
      end
    end
  end
end
