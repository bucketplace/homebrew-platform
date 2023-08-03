# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT20 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.0.2/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "6e743e7388008c396a3c016c0f4d7280f8fc32b191bb622ea65412c523fd8c26"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.arm?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.0.2/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "459a74380983859c971a7240b512ba32a3262dfe0db9ec5cfbd3f0327d4508be"

      def install
        bin.install "mortar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.0.2/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "906a6fc26afd2af2afd7c19cdad4d1ed31bbf3d6d8d0c588dbaa03be55b047f6"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.0.2/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "173f7d2a1d7ff266fc3be12106be89b1bd889b3da4de2061beeb03a964f2e1f2"

      def install
        bin.install "mortar"
      end
    end
  end

  test do
    system "mortar version"
  end
end
