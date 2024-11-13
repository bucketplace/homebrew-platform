# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MortarAT25 < Formula
  desc "Mortar - build and deploy your applications easy as eating a piece of cake"
  homepage "https://github.com/bucketplace/mortar"
  version "2.5.12"

  depends_on "awscli"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.12/mortar_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a621cb5a837277ffc2fb5be12729b0731c4e56734b0e930beca4394c14625242"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
    on_arm do
      url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.12/mortar_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "23a1528adcfc4f2a443b758d9b82fc94f0ccaece85c9e2571200ffd858e0f63b"

      def install
        bin.install "mortar"
        prefix.install "version"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.12/mortar_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "56536b6ed273681ab497bd5e2ba3da5ec433cbddd2c425b4d2068f4fe08b8e70"

        def install
          bin.install "mortar"
          prefix.install "version"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://nexus.co-workerhou.se/repository/raw-tool-releases/homebrew/platform/mortar/2.5.12/mortar_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "05d91f866e9322c67f66df662666548ced2fe6f36a7f31909247e27bb22d80d2"

        def install
          bin.install "mortar"
          prefix.install "version"
        end
      end
    end
  end
end
