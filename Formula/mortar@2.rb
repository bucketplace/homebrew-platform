# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT2 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.3.1/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "da9a2b5e81aac1782edd5f2cacbc71887a702101714e4c6a9d83381ee87cd537"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    if Hardware::CPU.arm?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.3.1/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f57dcf1a102f4f71a63499f931de33429079245dfbfbf06ea38dbcb152a2686e"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.3.1/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "71750e7e8dc508b00661a4b9f2ab5779653909c1776d664bddda090a3be93cf4"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.3.1/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ce48add5dea9885e76a33fae6609f129e808156444cd88c4c4e511878136a35c"

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
