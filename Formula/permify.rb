# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Permify < Formula
  desc "Permify is an open-source authorization service & policy engine based on Google Zanzibar."
  homepage "https://github.com/Permify/permify"
  version "0.7.8"
  license "Apache-2.0"

  depends_on "go" => :build

  on_macos do
    url "https://github.com/Permify/permify/releases/download/v0.7.8/permify_0.7.8_darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "8564930995be13b38d81c317826c0e2ece13f78b6ee54b50229328ac5461339c"

    def install
      bin.install "permify"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Permify/permify/releases/download/v0.7.8/permify_0.7.8_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "cb36e3ea0264164dd280e4dce3332dd1456dd02b46fdf4c3637ec57d59e2c979"

      def install
        bin.install "permify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Permify/permify/releases/download/v0.7.8/permify_0.7.8_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "cba1f1645813907638ab55ffe0b4c7015833c54df6749c485d2de26f1a686446"

      def install
        bin.install "permify"
      end
    end
  end

  head "https://github.com/Permify/permify.git", :branch => "master"
end
