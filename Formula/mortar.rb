# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/custom_download_strategy"
class Mortar < Formula
  desc "Mortar - build and use gRPC API easy"
  homepage "https://github.com/bucketplace/mortar-cli"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v1.4.0/mortar-cli_1.4.0_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "de6a5377ee655939bbb601c40fb9535edb629511c2337701b7229585d7051811"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v1.4.0/mortar-cli_1.4.0_Darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "8fc5d124c6f0b2c9b33be71c0e77454ab71d8ead7625e469458db0587327117d"

      def install
        bin.install "mortar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v1.4.0/mortar-cli_1.4.0_Linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a5a7e04dc3087bfec958f7c86e8d47cd92625327e85bf25de595e8545521dc83"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v1.4.0/mortar-cli_1.4.0_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "eae89029c6cbc22f70c4b6c470fabe1fda27fcb3d62c4fb916f4c5bd66de7cc7"

      def install
        bin.install "mortar"
      end
    end
  end

  test do
    system "mortar version"
  end
end
