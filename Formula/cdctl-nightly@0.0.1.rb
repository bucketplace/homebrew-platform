class CdctlNightlyAT001 < Formula
  desc "CD pipeline CLI tool"
  homepage "https://github.com/bucketplace"
  version "0.0.1-20"
  depends_on "awscli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-20/cdctl_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2807a7af616c7d32757e6223f568c8e14930e4be4cc4625e9a0e8a61c85914cd"

      def install
        bin.install "cdctl"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-20/cdctl_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b541e2339b688b61ff2ba174a9830351af88296854cde0ec5fbd9560780fbd68"

      def install
        bin.install "cdctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/cdctl/0.0.1-20/cdctl_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7f1a3105e7faed7f00bee7847afaa8db5a13f07826a59f51ef3919aecd2b04d3"

      def install
        bin.install "cdctl"
      end
    end
  end
end
