# typed: false
# frozen_string_literal: true

class Twofer < Formula
  desc "Convert CSV-like files between many common file formats"
  homepage "https://github.com/gurgeous/2fer"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gurgeous/2fer/releases/download/v0.1.0/2fer_0.1.0_darwin_amd64.tar.gz"
      sha256 "e7a57c1f2ac7e751158f9bbeab10a9b5fe99cce608fdd36f008931e6af4d30e7"
    end

    if Hardware::CPU.arm?
      url "https://github.com/gurgeous/2fer/releases/download/v0.1.0/2fer_0.1.0_darwin_arm64.tar.gz"
      sha256 "5cddbe01b3e4520fc3f8edc773d45bf26f89d0ca4f178146750f8af29316e4ec"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/gurgeous/2fer/releases/download/v0.1.0/2fer_0.1.0_linux_amd64.tar.gz"
      sha256 "e1dcc16788135ff8620b0414d3862b8313f04f5e0b5f822185cb0b04ca263db9"
    end
  end

  def install
    bin.install "2fer"
    %w[2csv 2json 2jsonl 2md 2sqlite 2tsv 2xlsx 2yml].each do |name|
      bin.install_symlink "2fer" => name
    end
    bash_completion.install "extra/2fer.bash" => "2fer"
    zsh_completion.install "extra/_2fer" => "_2fer"
  end

  test do
    system "#{bin}/2fer", "--version"
    system "#{bin}/2json", "--version"
  end
end
