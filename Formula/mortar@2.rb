# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT2 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.5.5"

  on_macos do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.5/mortar_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bb645c4a7aa62984141a572809d669ce5bf5e2c42d43cd1ff0728e8b8fc630d8"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.5/mortar_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "aa18f65fcf13470646716e6f95821349c86c2890f49f7e6b2c450f97def7b906"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.5/mortar_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "92e6dccffedf90abe66b85a86a23c438899e9c27aff9740c4a9671e69a78b961"

        def install
          bin.install "mortar"
          prefix.install "version"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.5/mortar_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "b8ab0816b18128c0c4c144c41b6a6830cc1205b9b6c4fb366f8b4eb3c9d30de7"

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
