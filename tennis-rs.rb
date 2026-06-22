# typed: false
# frozen_string_literal: true

class TennisRs < Formula
  desc "Stylish CSV tables in your terminal."
  homepage "https://github.com/gurgeous/tennis-rs"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gurgeous/tennis-rs/releases/download/v0.6.1/tennis_0.6.1_darwin_amd64.tar.gz"
      sha256 "35780b4f9a5bc4030d1cb0fbc79f15565be7f26704df669462de9220798e4d39"

      define_method(:install) do
        bin.install "tennis"
        man1.install "extra/tennis.1"
        bash_completion.install "extra/tennis.bash" => "tennis"
        zsh_completion.install "extra/_tennis" => "_tennis"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gurgeous/tennis-rs/releases/download/v0.6.1/tennis_0.6.1_darwin_arm64.tar.gz"
      sha256 "c3d3b1d292733b73989bc65bacd8f26b9cf9b44830a142d087812991e0a6884f"

      define_method(:install) do
        bin.install "tennis"
        man1.install "extra/tennis.1"
        bash_completion.install "extra/tennis.bash" => "tennis"
        zsh_completion.install "extra/_tennis" => "_tennis"
      end
    end
  end

  test do
    system "./tennis --version"
  end
end
