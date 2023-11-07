# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT1 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "1.4.24"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.4.24/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a4408f080a1dbe1dea311ee4221c0300d34dc1c5e6a3d79cbff798ad627c673e"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.4.24/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "22c25024f82e2c7a456a73f268f42f5f9dd5a4e3f15ed469fd160161ac9e6b8f"

      def install
        bin.install "mortar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.4.24/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "d3a649ae1357250810bc31df5daea0217f21668e5c5a148aa25816a26e0d43bc"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.4.24/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5afcc0360d1e541700ff671e9486b8ef752ecfac33a4a0958b53ac2aa6385343"

      def install
        bin.install "mortar"
      end
    end
  end

  test do
    system "mortar version"
  end
end
