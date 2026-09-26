# typed: false
# frozen_string_literal: true

class Tennis < Formula
  desc "Stylish CSV tables in your terminal."
  homepage "https://github.com/gurgeous/tennis"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gurgeous/tennis/releases/download/v0.8.0/tennis_0.8.0_darwin_amd64.tar.gz"
      sha256 "6d2d85a7b9bd9a9bf5856373ba6694ebf3122ac4169ffe9d841b9fc1d8d80e1a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/gurgeous/tennis/releases/download/v0.8.0/tennis_0.8.0_darwin_arm64.tar.gz"
      sha256 "6ed189233abaa72af452fff2791192088ac5a6f74a9198c8fe1f906fa975fb2e"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/gurgeous/tennis/releases/download/v0.8.0/tennis_0.8.0_linux_amd64.tar.gz"
      sha256 "b4df8fb8b757f1455f7f08af18146078d3bf660ecab92cf09a7c4987556a50e4"
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
