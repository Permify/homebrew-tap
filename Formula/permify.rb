# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Permify < Formula
  desc "Permify is an open-source authorization service & policy engine based on Google Zanzibar."
  homepage "https://github.com/Permify/permify"
  version "0.4.3"
  license "Apache-2.0"

  depends_on "go" => :build

  on_macos do
    url "https://github.com/Permify/permify/releases/download/v0.4.3/permify_0.4.3_darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "3212a1371c636c6093234e04da878f3f27f878b7b4de70ccf032da0788f7221f"

    def install
      bin.install "permify"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Permify/permify/releases/download/v0.4.3/permify_0.4.3_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "733d8dea3d1d99dc2a8c8bd54c3746ae3ae030029c098f1a87462690c77fbeb4"

      def install
        bin.install "permify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Permify/permify/releases/download/v0.4.3/permify_0.4.3_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a2ba5614393d387d3fbf86028de910f93e29bc1fb3924c91f77d4561a9217d88"

      def install
        bin.install "permify"
      end
    end
  end

  head "https://github.com/Permify/permify.git", :branch => "master"
end
