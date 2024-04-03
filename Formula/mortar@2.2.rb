# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT22 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.2.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.2.8/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "d0334bc4711252f6d7f66140a066efe9e719bc19fc60284e8962343f7ebc99b3"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    if Hardware::CPU.arm?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.2.8/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "317d36504975e04fc83470279003a7872efb0ef197591e288c60ac406b21f21b"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.2.8/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "847683bdb2439e4a7d87fe2643314210abc28dfbbdad23c65061b0a2b6ce4edf"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.2.8/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "cd0b43fa1ffa5e830f809a6f8e3aadc3b9115eee91124de59893684ae4ad6d80"

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
