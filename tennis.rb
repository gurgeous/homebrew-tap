# typed: false
# frozen_string_literal: true

class Tennis < Formula
  desc "Stylish CSV tables in your terminal."
  homepage "https://github.com/gurgeous/tennis"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gurgeous/tennis/releases/download/v0.7.0/tennis_0.7.0_darwin_amd64.tar.gz"
      sha256 "5f6685274c29e89c583fa2f87d8ffd708f0ec8ba63738eb8b9c469728525acf9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/gurgeous/tennis/releases/download/v0.7.0/tennis_0.7.0_darwin_arm64.tar.gz"
      sha256 "b25a0adc8fbeb92e71356c07b88b01c849fad1238fff18fe19e0777a95a0b5c7"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/gurgeous/tennis/releases/download/v0.7.0/tennis_0.7.0_linux_amd64.tar.gz"
      sha256 "ffc18064ddf9c555cdce55e10b8423d1a4cf2c42afb4a7dc9a21a70d8d7d6924"
    end
  end

  def install
    bin.install "tennis"
    man1.install "extra/tennis.1"
    bash_completion.install "extra/tennis.bash" => "tennis"
    zsh_completion.install "extra/_tennis" => "_tennis"
  end

  test do
    system bin/"tennis", "--version"
  end
end
