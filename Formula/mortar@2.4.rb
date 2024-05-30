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
      sha256 "333e187bbd8d4ff4b25fcfe54d7efff4449a6944cf4812031120e4794a0ed086"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.4.0/mortar_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "109894003051f0b63f4501d31cf0c845f996af9ccf298698e486404e4cd4b603"

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
        sha256 "b82aafcf4c229133a68da208a5f413ddfdb36b16ab984d441b56dc7836917fcf"

        def install
          bin.install "mortar"
          prefix.install "version"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.4.0/mortar_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "59d61f06c6411c4cd73dc3f05dd6c070bbed6441b2d9b3cb6e477a551c12ef06"

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
