# typed: strict
# frozen_string_literal: true

# Homebrew formula for the CODEXA standalone CLI.
class Codexa < Formula
  desc "AI-powered terminal coding agent"
  homepage "https://github.com/Aaravkhanal/CODEXA"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Aaravkhanal/CODEXA/releases/download/v0.2.7/codexa-v0.2.7-darwin-arm64.tar.gz"
      sha256 "833dd18f9b271f694b9932c72ece2358d3422b18b4d33d739d106a8f868d909e"
    end
    on_intel do
      url "https://github.com/Aaravkhanal/CODEXA/releases/download/v0.2.7/codexa-v0.2.7-darwin-x64.tar.gz"
      sha256 "dd1bec776dcd14d8e87b36207107eb26b193f2d24a4c9c39fbc652faaaafd9b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Aaravkhanal/CODEXA/releases/download/v0.2.7/codexa-v0.2.7-linux-arm64.tar.gz"
      sha256 "6a3fab88a309c5a22c70cac4176bafae696c6db5ef9ad57ae197904a39d41b43"
    end
    on_intel do
      url "https://github.com/Aaravkhanal/CODEXA/releases/download/v0.2.7/codexa-v0.2.7-linux-x64.tar.gz"
      sha256 "69bbe4f4ef1232a4eb64cf5e3aae838a531d58409b5f89ad873f8162a9912f38"
    end
  end

  def install
    bin.install "codexa"
  end

  test do
    assert_match "codexa #{version}", shell_output("#{bin}/codexa --version")
  end
end
