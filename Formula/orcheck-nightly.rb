class OrcheckNightly < Formula
  desc "OpenRouter Usage check CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.2-5"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.2-5/orcheck_0.0.2-5_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "813938005e9eb682c9df98286c9e55ec154e4296cc61fcfb52a3893c0417f8af"

      def install
        bin.install "orcheck"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.2-5/orcheck_0.0.2-5_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4abe65c54ed98ab5b3dd617cc8a087926dade54696df9047bb16a4eb1552d639"

      def install
        bin.install "orcheck"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.2-5/orcheck_0.0.2-5_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "748a2eec23866ea0b27fba1107c4a9def757f3b3083c63a71ed7d1b94ccd0b33"

      def install
        bin.install "orcheck"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/orcheck/0.0.2-5/orcheck_0.0.2-5_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9a114b7c88944a299eb1c3aa4e7b067768211d20d8e075b2839477fbc7877979"

      def install
        bin.install "orcheck"
      end
    end
  end
end
