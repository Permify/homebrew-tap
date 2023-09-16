# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Permify < Formula
  desc "Permify is an open-source authorization service & policy engine based on Google Zanzibar."
  homepage "https://github.com/Permify/permify"
  version "0.5.1"
  license "Apache-2.0"

  depends_on "go" => :build

  on_macos do
    url "https://github.com/Permify/permify/releases/download/v0.5.1/permify_0.5.1_darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "553bf70519c4b257abcef0b08baa69ce0312ec0003fd28fbf8ba8e227fede19b"

    def install
      bin.install "permify"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Permify/permify/releases/download/v0.5.1/permify_0.5.1_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9555fdc24a6378142978421fb2b9dbcd37c771f05977942db893d0074313137b"

      def install
        bin.install "permify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Permify/permify/releases/download/v0.5.1/permify_0.5.1_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f41c24d88a2f9b9f6a5eef7614a794140341e13b344349f454907823b8a11b34"

      def install
        bin.install "permify"
      end
    end
  end

  head "https://github.com/Permify/permify.git", :branch => "master"
end
