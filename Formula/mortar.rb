# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/custom_download_strategy"
class Mortar < Formula
  desc "Mortar - build and use gRPC API easy"
  homepage "https://github.com/bucketplace/mortar-cli"
  version "1.1.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v1.1.3/mortar-cli_1.1.3_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "bf70a817a6340e840b436819f58a651fd26efaa62983dd87f8d735649acae279"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v1.1.3/mortar-cli_1.1.3_Darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f54868c5f9de983aedd7c653ee90469e76aaef4c42180b6359115eccb0fad018"

      def install
        bin.install "mortar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v1.1.3/mortar-cli_1.1.3_Linux_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c4d35096addab6b0eac0ef65d0dfd03831cfffb4927e34c02b5cd983db5164dc"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v1.1.3/mortar-cli_1.1.3_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e03b1029ac81779ac84f0b579975e094411596e9345e1d9df03f88d914d4d60b"

      def install
        bin.install "mortar"
      end
    end
  end

  test do
    system "mortar version"
  end
end
