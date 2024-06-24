# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT25 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.5.1"

  on_macos do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.1/mortar_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c4fa5fd5bdb3ea708f2c0716696b64249fd445f9328d12b555956530afea78c3"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.1/mortar_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d2edaf82073f602b7e462a497869d31719fc19641eda6291ca1e4fcf212b5a6d"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.1/mortar_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "aa018111f3113f02cd2ccfd1f71aaadb9e20928e09a8d4d622a8b78b051c03b6"

        def install
          bin.install "mortar"
          prefix.install "version"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.1/mortar_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "3660fc5a3c3ff234dec3863e7d32c550571afefa3e7e027ce06bc40bf11c2ead"

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