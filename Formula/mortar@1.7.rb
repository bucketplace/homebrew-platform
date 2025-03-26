# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT17 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "1.7.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.7.10/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "27055aacc5495104db0a58633ca7ef1f6a705b98c3bdfc0d90d31dc972044e0a"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.arm?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.7.10/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "763f1a0d5846719bb85e62fee533811baa2b56b7a0f4a88dd081c6ac99268b91"

      def install
        bin.install "mortar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.7.10/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "57835d00174ff1c506b7abb1f6bf8ef67240ae8ed4ad32f14bc61b9e4e4e6446"

        def install
          bin.install "mortar"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.7.10/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "45d9ec2e551619305068ae66623bcc9d173b972b8d780311017fe7a7a1dc3fee"

        def install
          bin.install "mortar"
        end
      end
    end
  end

  test do
    system "mortar version"
  end
end
