# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mortar < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "1.7.2"

  on_macos do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.7.2/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "c1367f01e87723d3f320df864d9fd6b96fa733ce2323b31fc823a7e220118d13"

      def install
        bin.install "mortar"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.7.2/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "59c926c3ddb1788340c52c5dd9ea0d5004616cbf5368eca4989426cf7a3b4091"

      def install
        bin.install "mortar"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.7.2/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "3b5ce8f9fcf6c4aa946e89ee07b1fafa3163dfdfdb20192000a82ddd643ed64d"

        def install
          bin.install "mortar"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.7.2/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "41c3a4642aefbbd118dba1203b95e152e891d424ccde5698f9b4af44dbfc9563"

        def install
          bin.install "mortar"
        end
      end
    end
  end

  test do
    system "mortar version"
  end
end
