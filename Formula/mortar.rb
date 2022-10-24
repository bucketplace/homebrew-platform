# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/custom_download_strategy"
class Mortar < Formula
  desc "Mortar - build and use gRPC API easy"
  homepage "https://github.com/bucketplace/mortar-cli"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v1.3.0/mortar-cli_1.3.0_Darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d416111dca36b87c3cdd39d07d39a727b3e94e8301215b8eeb2523d89466c625"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v1.3.0/mortar-cli_1.3.0_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "da876cbd5dc61c9df1dff3065ed13014c2e748801365850a00eecdbc3907076e"

      def install
        bin.install "mortar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v1.3.0/mortar-cli_1.3.0_Linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "55a9e9b4253e9921f4eae44e5951e8e7905191ad98c2ad8bc94dc74399f65ee3"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v1.3.0/mortar-cli_1.3.0_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "280a49c8403b8029e5cf215e5b97d033d404579a0b5fbd602eda2f3951a4580c"

      def install
        bin.install "mortar"
      end
    end
  end

  test do
    system "mortar version"
  end
end
