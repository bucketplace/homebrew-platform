# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT24 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.4.1"

  on_macos do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.4.1/mortar_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "962b21fbe86bb1ccf78afe2c54e1fc5a5a9946f9ba5fa11c242b9cef745ba148"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.4.1/mortar_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6f7f563f0de95848929b67a48578b9d577c71a15bce925f60e187a3d8346758d"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.4.1/mortar_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "c03d85e8d5525829150c03bd90e297e1e8e722d8690c9d4bd4bb87879c03eb4f"

        def install
          bin.install "mortar"
          prefix.install "version"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.4.1/mortar_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "7e3ded1a8047b63560826d26f665f0ee853db44cb44f7480c584710869ed74ae"

        def install
          bin.install "mortar"
          prefix.install "version"
        end
      end
    end
  end

  test do
    system "mortar version"
  end
end
