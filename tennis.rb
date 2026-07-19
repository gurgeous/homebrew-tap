# typed: false
# frozen_string_literal: true

class Tennis < Formula
  desc "Stylish CSV tables in your terminal."
  homepage "https://github.com/gurgeous/tennis"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gurgeous/tennis/releases/download/v0.7.1/tennis_0.7.1_darwin_amd64.tar.gz"
      sha256 "c8b88389e75b897568ee626776ace38b14c0ccefe49baa1e19941eb330d9bd26"
    end
    if Hardware::CPU.arm?
      url "https://github.com/gurgeous/tennis/releases/download/v0.7.1/tennis_0.7.1_darwin_arm64.tar.gz"
      sha256 "5beebf10ab4d5a275803f4847b042f78b3dcdd358633f7cc3a3fc44584441970"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/gurgeous/tennis/releases/download/v0.7.1/tennis_0.7.1_linux_amd64.tar.gz"
      sha256 "e1da6df85b543d6e98b49bce760e86f0aee693570d8840fcbad5c716542675f2"
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
