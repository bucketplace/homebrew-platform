# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT1 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "1.7.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.7.11/mortar_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "2bea76cb0c35ddddefd6bf3b7d5e09163b53c6e85d91e843b33cb72f1f426cc7"

      def install
        bin.install "mortar"
      end
    end
    if Hardware::CPU.arm?
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.7.11/mortar_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "61eaf618e8b03caf59e5311e0b1711dd0c5a3695572c5bce3dbd8c19f979a61d"

      def install
        bin.install "mortar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.7.11/mortar_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "ba7e4bae3fb85b2b04948182e64515a14760c0ea92771d36787c3a039560fb6d"

        def install
          bin.install "mortar"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/1.7.11/mortar_Linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "2124948b94e4277b11b2b05adcc79f21c6e0b93f7476123244a3aed4396bd18d"

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
