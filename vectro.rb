# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vectro < Formula
  desc "The rpn calculator for your terminal."
  homepage "https://github.com/gurgeous/vectro"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gurgeous/vectro/releases/download/0.1.0/vectro_0.1.0_darwin_amd64.tar.gz"
      sha256 "d6a02c69c631a6b5e813016ac8afae8e86076082a5689fb462c4bba4b1d390af"

      def install
        bin.install "vectro"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gurgeous/vectro/releases/download/0.1.0/vectro_0.1.0_darwin_arm64.tar.gz"
      sha256 "4eee1dca24cc0a152e8032e53fc99da6ec8a00d0a448e7d01b15ca232611f935"

      def install
        bin.install "vectro"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gurgeous/vectro/releases/download/0.1.0/vectro_0.1.0_linux_amd64.tar.gz"
        sha256 "e6183ea77453be2dcc5421d2818aa6107269674d673cd32982ae3cd9856895f1"

        def install
          bin.install "vectro"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gurgeous/vectro/releases/download/0.1.0/vectro_0.1.0_linux_arm64.tar.gz"
        sha256 "146c6b672d2cc10f550dfe66e84ed641558259fb10d5c88e805545ece5189fc4"

        def install
          bin.install "vectro"
        end
      end
    end
  end

  test do
    system "#{bin}/vectro --version"
  end
end
