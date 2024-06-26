# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT25 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.5.3"

  on_macos do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.3/mortar_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9f9d2d2a3f4addaeab82126952484974a380bfae5d2042a75c126488ca327d67"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.3/mortar_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e45c13d89f49d679710b2353c9cf61b671e03fc07bcb81fd07a02103e4ff6c17"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.3/mortar_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "7de34fbc3a1cedc1f3ba05e3627ca0b65ace335ef78683e44a0b4541c7feb29e"

        def install
          bin.install "mortar"
          prefix.install "version"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.3/mortar_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "dcba8410aaf807223418d7e76a9f6b42f24bca7f03fb1726ef111d99443e52cb"

        def install
          bin.install "mortar"
          prefix.install "version"
        end
      end
    end
  end

  def post_install
    system "mortar version"
  end

  test do
    system "mortar version"
  end
end
