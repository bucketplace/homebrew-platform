# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT1 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "1.6.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.6.1/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "51f45fcc030e64dd3df43543fa6f6f35803573a5d4d75c7b7b48c60d0efa459a"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.arm?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.6.1/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6c10f62a6c246af94650e74b0294eb139832e9499c480ba8cc0e5f0dc9b32314"

      def install
        bin.install "mortar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.6.1/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2e5bc39b304556e6d2f3ba99a390e8d6d5237209fb8076bb8652d08781beefb1"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.6.1/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "2e88d4b80cc3d496fe0ee65c982390692d31d96243f6d9f6b08fcd91dd7d3cb2"

      def install
        bin.install "mortar"
      end
    end
  end

  test do
    system "mortar version"
  end
end
