# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Permify < Formula
  desc "Permify is an open-source authorization service & policy engine based on Google Zanzibar."
  homepage "https://github.com/Permify/permify"
  version "0.7.3"
  license "Apache-2.0"

  depends_on "go" => :build

  on_macos do
    url "https://github.com/Permify/permify/releases/download/v0.7.3/permify_0.7.3_darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "791bbe9918fae397a4dcef668536dbea1287e2e78cdc5910a1271ee01d812160"

    def install
      bin.install "permify"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Permify/permify/releases/download/v0.7.3/permify_0.7.3_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "23958b1202ac0ccba1747f7013e16a57c116127d5f2627d52580a23b37c92816"

      def install
        bin.install "permify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Permify/permify/releases/download/v0.7.3/permify_0.7.3_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "750c6aab51d97db91fb3b57a60222499b9a48f8d2e5a0d4e44dcaffaee664507"

      def install
        bin.install "permify"
      end
    end
  end

  head "https://github.com/Permify/permify.git", :branch => "master"
end
