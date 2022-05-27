# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class M1TerraformProviderHelper < Formula
  desc "CLI to support with downloading and compiling terraform providers for Mac with M1 chip."
  homepage "https://github.com/kreuzwerker/m1-terraform-provider-helper"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kreuzwerker/m1-terraform-provider-helper/releases/download/0.6.0/m1-terraform-provider-helper_0.6.0_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "9254bb69072f27384c7cacf82ba3268c0dc6c9c13dfca5a2c1e08b4f3469d945"

      def install
        bin.install "m1-terraform-provider-helper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kreuzwerker/m1-terraform-provider-helper/releases/download/0.6.0/m1-terraform-provider-helper_0.6.0_Darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "81cf33b0c8d2a9ae3b719c5a48b08c7a40a364d6d7fa704225cd7721d3dc3391"

      def install
        bin.install "m1-terraform-provider-helper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kreuzwerker/m1-terraform-provider-helper/releases/download/0.6.0/m1-terraform-provider-helper_0.6.0_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "c475f8d96f1074999c3441f91341e3000a8027ec865ed38858d8a586ca85820c"

      def install
        bin.install "m1-terraform-provider-helper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kreuzwerker/m1-terraform-provider-helper/releases/download/0.6.0/m1-terraform-provider-helper_0.6.0_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "bcd5d718cc75afe94b61e1d7741c3202dca724ef74272992a6d13b37d091edc8"

      def install
        bin.install "m1-terraform-provider-helper"
      end
    end
  end

  depends_on "go"
end
