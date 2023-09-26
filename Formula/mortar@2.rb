# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT2 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.0.7/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "5249456460127ca06d8ecb5254012dbd4a2d626dee8c8108673255942b3b1ca6"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    if Hardware::CPU.arm?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.0.7/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f2e3ef332ba23b4862ed1e414a8d26e85ef77f6032155f9a581d42fb6464ac8d"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.0.7/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8bcef794d3c950712e82c5a95dc577a92cb5c27d8993e25faba89c6bc31f9b49"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.0.7/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "3dfbb3ed6ac3d41b10952649884d206d379f1d624bad1a42aef7d1b82aa96e16"

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
