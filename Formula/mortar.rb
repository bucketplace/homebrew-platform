# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mortar < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "1.6.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.6.5/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "c2d3193ab8a92a275e7cfa5963836a4f7323dcc6cde7872719fd62f6fdcbc5c6"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.arm?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.6.5/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6ec228f0c2cf135a209c837e3f899174bdeef714a5719eec31d53473c830a312"

      def install
        bin.install "mortar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.6.5/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "bd0baee4d064e78ce6c6adf35422d5501b267066807526e9e433fc317efc2f01"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.6.5/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "06cb3bb8aeef586e1c35ca71bdc0e7cd569f0c3b17568bee1579358603a9d0f2"

      def install
        bin.install "mortar"
      end
    end
  end

  test do
    system "mortar version"
  end
end
