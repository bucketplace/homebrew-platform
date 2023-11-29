# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT21 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.1.2/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8f3105b0b21f5932d494853b62c2395e2cb9586474bbb83e5eacc579a270b164"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.1.2/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "bca3f7a4fdd36c89efb9a8d18fe1f273589d2aa41a9134197b53a0ea30072d5c"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.1.2/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "bd09690d8c7cbf19bbdf53e26832e431ee27d0e8e586b9f19d0e80ba4d184141"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.1.2/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "95bb7178c5e742f46120de8e2be5ffc63c5445ebaf6b300d2ee7b5839883bc7d"

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
