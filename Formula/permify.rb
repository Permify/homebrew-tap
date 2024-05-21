# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Permify < Formula
  desc "Permify is an open-source authorization service & policy engine based on Google Zanzibar."
  homepage "https://github.com/Permify/permify"
  version "0.8.7"
  license "Apache-2.0"

  depends_on "go" => :build

  on_macos do
    url "https://github.com/Permify/permify/releases/download/v0.8.7/permify_0.8.7_darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "3e73d1ee2cbe9fab10397e9120cca14f7edf27b646cc92ab6895cd56b0ecc1db"

    def install
      bin.install "permify"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Permify/permify/releases/download/v0.8.7/permify_0.8.7_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "78717ab95dd7a31b28cd53bba26be1bc2e92073f4e4f8f05392406bc33c88639"

        def install
          bin.install "permify"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Permify/permify/releases/download/v0.8.7/permify_0.8.7_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "cbd904ccd31b67d93b575255fd0864909ac8c8bc0315185071cff0d5642390c4"

        def install
          bin.install "permify"
        end
      end
    end
  end

  head "https://github.com/Permify/permify.git", :branch => "master"
end
