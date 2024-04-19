# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT23 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.3.0/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "850af4dbcbbc0b4ac2ff3eac12dc16e8d5ad941e0b467e5a50f3cc387a8349bc"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    if Hardware::CPU.arm?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.3.0/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9fb77acaed979dc3f9aaaab040a1763ebac56d22b77894e7cd705087d7349df2"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.3.0/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "3996653e022178ff701f84492f6252e5f9aa651229b31039e3bfdaa94941d97f"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.3.0/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "51c971ce4139103270c495898820bb7042a582f92ee43a5d851a53e411a1b2de"

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
