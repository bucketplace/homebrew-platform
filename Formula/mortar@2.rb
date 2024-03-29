# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT2 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.2.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.2.7/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "04a4d7ddcbcb09f9613ceee7537643e4e46486433f6f0ff8ffeb53adbaea7c04"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.2.7/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "04796f7a329a8660dbc00ee4761b8c5ac1e00b21ea09dd795723df1591166610"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.2.7/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7a086d04e00b0c05dc8c65397a51e63f17d35a378b19dfa030841d89bfdb8fa6"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.2.7/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "67261d6e29bf831f75af366395f4222b75545da57918da3f432b93dc1ce52821"

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
