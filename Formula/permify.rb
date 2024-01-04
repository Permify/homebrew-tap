# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Permify < Formula
  desc "Permify is an open-source authorization service & policy engine based on Google Zanzibar."
  homepage "https://github.com/Permify/permify"
  version "0.6.8"
  license "Apache-2.0"

  depends_on "go" => :build

  on_macos do
    url "https://github.com/Permify/permify/releases/download/v0.6.8/permify_0.6.8_darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "96809492544084cb2c5fd692554839c3e08378bb76bf3922558cd921eb07fd2c"

    def install
      bin.install "permify"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Permify/permify/releases/download/v0.6.8/permify_0.6.8_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "123366dcde4640f434f0bd857b9b64f51bc1faec03257587c1a6e3098f589d9d"

      def install
        bin.install "permify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Permify/permify/releases/download/v0.6.8/permify_0.6.8_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "dde2110e3c7b21ef03f27885e37d5d6b28ca540ea2b2a998986536c8ee6a2e02"

      def install
        bin.install "permify"
      end
    end
  end

  head "https://github.com/Permify/permify.git", :branch => "master"
end
