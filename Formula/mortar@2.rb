# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT2 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.0.3/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b05201eeeb3cbfcf2ebfb9e9de0ec181003eb9808604649d97f85e141a7be77e"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.0.3/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "e66b0ee491f88d87e8414c7aa71782597e5c6a95543fad533bcb30ac60c50abd"

      def install
        bin.install "mortar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.0.3/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "62a7466129146974319e7754fe57057ef3222ea2f535784a41b22ec9767784ff"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.0.3/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "819b802779b88f02df4dab55d556c1f0dec392550cd387384672f5345f247587"

      def install
        bin.install "mortar"
      end
    end
  end

  test do
    system "mortar version"
  end
end
