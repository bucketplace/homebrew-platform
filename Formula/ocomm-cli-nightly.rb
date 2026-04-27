class OcommCliNightly < Formula
  desc "ocomm — AI-driven commerce platform CLI"
  homepage "https://github.com/bucketplace"
  version "0.0.0-1"
  depends_on "awscli"

  on_macos do
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ocomm-cli/0.0.0-1/ocomm-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e7f1cb3f150237a4229d7a95594b72435413dc3c5bd7905919da86d510241a97"

      def install
        bin.install "ocomm"
      end
    end
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ocomm-cli/0.0.0-1/ocomm-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "13d9e14fa0c49d4b155194bf9ddea426cd27259ef7da649459da2152fd835393"

      def install
        bin.install "ocomm"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ocomm-cli/0.0.0-1/ocomm-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "363c8fb85790c6495fb4e073614f757e36e48ca2f0f91b9dd2ec483ab12bb243"

      def install
        bin.install "ocomm"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/cli/ocomm-cli/0.0.0-1/ocomm-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d5fb36aa9766e5e9debd91ca64dd0b043f7ad7cf37427ce071e3a88ad2f69dde"

      def install
        bin.install "ocomm"
      end
    end
  end
end
