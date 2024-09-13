# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT25 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.5.8"

  depends_on "awscli"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.8/mortar_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5605fb42b446d6fb5836c7d87f4505e68fa013b0ff06a246ea23ba13fc903c35"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.8/mortar_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7f4fbfc369e6463d2da221f21d152214b8e897144cb2d1722d3bb8fd75dedc35"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.8/mortar_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "9173ada828321ee12343af3da6ea4e4dfb18504a3ac876971959880df7db1323"

        def install
          bin.install "mortar"
          prefix.install "version"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.8/mortar_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "3942ba852834513b9fb3d46e9df3c44221a3cb7d3c326b9b4e95df864657f641"

        def install
          bin.install "mortar"
          prefix.install "version"
        end
      end
    end
  end
end
