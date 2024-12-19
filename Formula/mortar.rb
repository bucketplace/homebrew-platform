# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mortar < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.5.14"

  depends_on "awscli"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.14/mortar_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4c3451235d44982efaa2a8367b081afdc5e280095787a17add946539725f079a"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.14/mortar_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6ffe4475b25baece0dc088852806df5b5813f9344c334237f5adc73b8c80ff71"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.14/mortar_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "880a3a6953cf7d4c3d678a5b72f49f9a7476297474fdfe96f3827150a748966c"

        def install
          bin.install "mortar"
          prefix.install "version"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.14/mortar_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "49ccd99e3daea661170635f1328e6e1d2a11c6466992141d84ef886732bef0c2"

        def install
          bin.install "mortar"
          prefix.install "version"
        end
      end
    end
  end
end
