# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Permify < Formula
  desc "Permify is an open-source authorization service & policy engine based on Google Zanzibar."
  homepage "https://github.com/Permify/permify"
  version "0.9.4"
  license "Apache-2.0"

  depends_on "go" => :build

  on_macos do
    url "https://github.com/Permify/permify/releases/download/v0.9.4/permify_0.9.4_darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "3a5e5733636528f70b1e2e5a8558db8634b043bf8dcba95f48ddb196b447f8f0"

    def install
      bin.install "permify"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Permify/permify/releases/download/v0.9.4/permify_0.9.4_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "f4ed20d13c73bd462754d666ff5cbcd19899ca6c2acedaf5af5528691983a498"

        def install
          bin.install "permify"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Permify/permify/releases/download/v0.9.4/permify_0.9.4_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "28f95150e14c4ba5bab65396a4aa3223ccc57fae5ca8f986a1033c502a8b3594"

        def install
          bin.install "permify"
        end
      end
    end
  end

  head "https://github.com/Permify/permify.git", :branch => "master"
end
