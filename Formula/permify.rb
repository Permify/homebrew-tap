# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Permify < Formula
  desc "Permify is an open-source authorization service & policy engine based on Google Zanzibar."
  homepage "https://github.com/Permify/permify"
  version "0.7.5"
  license "Apache-2.0"

  depends_on "go" => :build

  on_macos do
    url "https://github.com/Permify/permify/releases/download/v0.7.5/permify_0.7.5_darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "bab4c3b4cbda0a6116d2fc58272a93b3bda0544c15b4e757c7d0d40d977fb50a"

    def install
      bin.install "permify"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Permify/permify/releases/download/v0.7.5/permify_0.7.5_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9b2bbc4f0e672fc35d489d0a8a96ae1fb0536707b0da56254ef8a057bbb81e34"

      def install
        bin.install "permify"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Permify/permify/releases/download/v0.7.5/permify_0.7.5_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "66ad22085ab06a84cb1c5c18f5ec6a0da288d71ca7767f5ddcf512f16cbe8e97"

      def install
        bin.install "permify"
      end
    end
  end

  head "https://github.com/Permify/permify.git", :branch => "master"
end
