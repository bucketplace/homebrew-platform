# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/custom_download_strategy"
class Mortar < Formula
  desc "Mortar - build and use gRPC API easy"
  homepage "https://github.com/bucketplace/mortar-cli"
  version "1.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v1.3.1/mortar-cli_1.3.1_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a0f0bc049de75197e16977d70f02dd64c8a97e9b7aa1cd9ba612e83acbd58d04"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v1.3.1/mortar-cli_1.3.1_Darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "894e5db638485493ac5cb0b4a4f9cf60d2275b29178dbe22d7d2f7adec4469fe"

      def install
        bin.install "mortar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v1.3.1/mortar-cli_1.3.1_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "94c54ca42036fe1410c3299651fc7f94fd11f76d9e3ba2e4c3efa425b781336c"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v1.3.1/mortar-cli_1.3.1_Linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "75b5d64f7d29d7b8b5f6b342d7d8b389dcf787debdd4b5a73c2566be25c25ed6"

      def install
        bin.install "mortar"
      end
    end
  end

  test do
    system "mortar version"
  end
end
