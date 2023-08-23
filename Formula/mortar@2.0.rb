# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT20 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.0.5/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "781947f9cdc61e30abd0500741988ee420d5b8c8b2314ba56dabf06006e3472b"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    if Hardware::CPU.arm?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.0.5/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1659f771f0c9268775caa9c4326c251e7f5b89ffce38ecd9fd661b9eb51593a7"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.0.5/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b0be6e5d1bedfe8a628797c7d067ace1dc8fc6812b85830040895fafbf8186d8"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.0.5/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "fd71519d4f6b9a1355aea1c3659774c47087bcc155c89ea8d46ad07316baacf4"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  test do
    system "mortar version"
  end
end
