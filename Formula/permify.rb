# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Permify < Formula
  desc "Permify is an open-source authorization service & policy engine based on Google Zanzibar."
  homepage "https://github.com/Permify/permify"
  version "0.2.3"
  license "GNU General Public License v3.0"

  depends_on "go" => :build

  on_macos do
    url "https://github.com/Permify/permify/releases/download/v0.2.3/permify_0.2.3_darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "d37b811167061c383a689b4794ead17548fea8b4536c850d418e09d8437c8ca9"

    def install
      if !File.exists? "permify"
        system "go build --ldflags ./cmd/permify"
      end
      bin.install "permify"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Permify/permify/releases/download/v0.2.3/permify_0.2.3_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "047d3c76a6bc0d2650da2c45d4514d68fd8333b71f687a4303fa09e440e563de"

      def install
        if !File.exists? "permify"
          system "go build --ldflags ./cmd/permify"
        end
        bin.install "permify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Permify/permify/releases/download/v0.2.3/permify_0.2.3_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5e31083b207fb7c1124dfd430911ec43d587726c5680ca10d337b94b159c155d"

      def install
        if !File.exists? "permify"
          system "go build --ldflags ./cmd/permify"
        end
        bin.install "permify"
      end
    end
  end

  head "https://github.com/Permify/permify.git", :branch => "master"
end
