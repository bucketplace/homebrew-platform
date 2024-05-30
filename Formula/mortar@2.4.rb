# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT24 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.4.0"

  on_macos do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.4.0/mortar_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2e746ae42b15270cf2efd00f8a5e325ff31b5bcb6c9859de4237e8ce236caf7e"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.4.0/mortar_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1bdfb3abb2cbea38fe3b7880c92d602cb688d09dc86509ba3a0beab07955c49a"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.4.0/mortar_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "8a10a9661f7573dbf845eff70bb5a268d6f0ffe2a907e33623c0f44b02c0d397"

        def install
          bin.install "mortar"
          prefix.install "version"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.4.0/mortar_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "7ff9e37af91d2023601bc1dbc894704645e4baa8eb9902d031f50ab3ec702733"

        def install
          bin.install "mortar"
          prefix.install "version"
        end
      end
    end
  end

  test do
    system "mortar version"
  end
end
