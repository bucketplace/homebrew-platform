# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mortar < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "1.6.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.6.4/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "29937f8cd9b10290de1bb63f6b4de8233463605f755c4125884c8c9e469904ce"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.arm?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.6.4/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d2732fa33a6fb53f438dfbd551a11532b4c0042049a4a52c2b0b75ad6290f611"

      def install
        bin.install "mortar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.6.4/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9472cc87fd9d9ac1c8f821a23953fb6e11675c1e528b441b50dddbe47e29befc"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.6.4/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "8c7aa6cee3174343698cb29829c0faf5320c44d39fad66df8302fa25a496071c"

      def install
        bin.install "mortar"
      end
    end
  end

  test do
    system "mortar version"
  end
end
