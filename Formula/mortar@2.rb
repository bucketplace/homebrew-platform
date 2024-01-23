# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT2 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.2.0/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "83edcdf27445c6e778ddb4eb63c1d4b34e554eca7d25e3652cb195bc37249de3"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.2.0/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "084d51d9b41346a011f8e1108930dd42f825ea1b88aa15c1658e99392ad56559"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.2.0/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8f6fa46ab5e6ffd85a62353a49a95a96c53f2c83cc66d44f48cc6f28b76049f6"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.2.0/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "86046b7c071a29f79ce9cc47c49a6be2ec86168478fd23ca916e3d9aa5659b97"

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
