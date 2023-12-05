# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Permify < Formula
  desc "Permify is an open-source authorization service & policy engine based on Google Zanzibar."
  homepage "https://github.com/Permify/permify"
  version "0.6.2"
  license "Apache-2.0"

  depends_on "go" => :build

  on_macos do
    url "https://github.com/Permify/permify/releases/download/v0.6.2/permify_0.6.2_darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "53d0e77476458dd253adb4319a79d56fa34331ef2922a19c2971ffdfc0fc19b8"

    def install
      bin.install "permify"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Permify/permify/releases/download/v0.6.2/permify_0.6.2_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8ab89133e7483b47f753c498e66aeb5f59ba472343b5a077647791d8efe6a16f"

      def install
        bin.install "permify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Permify/permify/releases/download/v0.6.2/permify_0.6.2_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3d0dd13da4a1fc64a70fa3fdc912c98f4ad2db31cae966c68015ba630372a738"

      def install
        bin.install "permify"
      end
    end
  end

  head "https://github.com/Permify/permify.git", :branch => "master"
end
