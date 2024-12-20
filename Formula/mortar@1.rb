# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT1 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "1.7.9"

  on_macos do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.7.9/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "ac68f24ad9db09eb923c9adad3d18174b7610b14d2eb4332b1dafb8a55d00604"

      def install
        bin.install "mortar"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.7.9/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7d8e0cc2628fa09ecce379bde9ff4580b0e4d67ba9d12fcfad92f716eda018e5"

      def install
        bin.install "mortar"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.7.9/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "27f57aefe72fafbb98c8b646d6570993a9a0cab9a374031ad58171db56216316"

        def install
          bin.install "mortar"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.7.9/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "f366f71615ca4f7ae14846df2b5b30c84343f48a8f864e41c498af1494c37881"

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
