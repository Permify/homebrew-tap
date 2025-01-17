# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Permify < Formula
  desc "Permify is an open-source authorization service & policy engine based on Google Zanzibar."
  homepage "https://github.com/Permify/permify"
  version "1.2.7"
  license "Apache-2.0"

  depends_on "go" => :build

  on_macos do
    url "https://github.com/Permify/permify/releases/download/v1.2.7/permify_1.2.7_darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "723b1dc00d9ebfde34c9f4d6d4d2b0b3b5e52d6aa0e6f033173f2851f7a49608"

    def install
      bin.install "permify"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Permify/permify/releases/download/v1.2.7/permify_1.2.7_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "bdacc9e8788b06039ec266e99b4d259d762d19387432612eb93721c0cd44ccc5"

        def install
          bin.install "permify"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Permify/permify/releases/download/v1.2.7/permify_1.2.7_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "c574411d2812803d36412f33d7f56f59c5e785ff09008f47d24d2ebfb8d5699d"

        def install
          bin.install "permify"
        end
      end
    end
  end

  head "https://github.com/Permify/permify.git", :branch => "master"
end
