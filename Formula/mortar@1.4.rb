# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT14 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "1.4.18"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.4.18/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "01b631d8204929f4a6eb80ccdbae5770c16f2409192f89bce1f1580562343b37"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.arm?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.4.18/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "996fd09d2567b0235709d27c6896e426beef8bbc3411f2e1f6e20eb01ceac526"

      def install
        bin.install "mortar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.4.18/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "02059c15f46f7c578a557f1edf531ec6bbbc8be59937a3e4fe041a1d04377a52"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.4.18/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "cb22db2b703b5845b1769728c7597c79e2832eaba992bc73dcfae71fb6b55e94"

      def install
        bin.install "mortar"
      end
    end
  end

  test do
    system "mortar version"
  end
end
