# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mortar < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.5.13"

  depends_on "awscli"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.13/mortar_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c511828e2908bf768bd2f51d066f356bc16060892c0bb863beb7553cc492442c"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.13/mortar_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2019a21167b1b5d815e991cf6abb014a095bd933b9f1c9e9620defa081919021"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.13/mortar_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "47ba92f1a24ec4dbb99aca12df384d71b3c2c4b4f654fc7efef31dbb48b571c5"

        def install
          bin.install "mortar"
          prefix.install "version"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.13/mortar_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "6abcd6b9963b3af5a73c1e2b31b1de7d2f82390907502407489f68ba14be4107"

        def install
          bin.install "mortar"
          prefix.install "version"
        end
      end
    end
  end
end
