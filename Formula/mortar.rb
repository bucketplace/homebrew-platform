# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mortar < Formula
  desc "Mortar - build and use gRPC API easy"
  homepage "https://github.com/bucketplace/mortar-cli"
  version "0.0.1-beta2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v0.0.1-beta2/mortar-cli_0.0.1-beta2_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "eef22981df634c923ed8d27cd9abd72908cc449aedcdc56f4ffb0fc89eac097e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v0.0.1-beta2/mortar-cli_0.0.1-beta2_Darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2ffdfbe520a8da6b1d36aabd8b57b49971e611c26aace8c122a22626a6c5948c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v0.0.1-beta2/mortar-cli_0.0.1-beta2_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e07a39c3392aade4ba14e17d75f3f2f215d836234e4ae0c6125ec052d3d43ac9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bucketplace/mortar-cli/releases/download/v0.0.1-beta2/mortar-cli_0.0.1-beta2_Linux_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "028ac0e20574f758104f275e2bccb54ab96e7cab2f079810ac3a32a5bb760d63"
    end
  end

  def install
    bin.install "mortar"
  end
end
