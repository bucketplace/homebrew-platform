# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mortar < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.5.0"

  on_macos do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.0/mortar_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "660ec6a7cd8ac0459b0abccc3651a69db18e2a3992344822e11e944486282a7a"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.0/mortar_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a7072e778a0bf99404312fc7ebd43127c8e3e6007d54c5d5066044973cfb1176"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.0/mortar_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "b8be40928a06da5c1ca54aab68650c03e80dce0aed8c7108d7cf1fea801db80d"

        def install
          bin.install "mortar"
          prefix.install "version"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.0/mortar_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "1b3de73d90def98517742efb3ae2129a0ff3156446e6fdd764b2a9815cabb603"

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
