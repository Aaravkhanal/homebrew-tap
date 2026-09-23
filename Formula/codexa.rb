# typed: strict
# frozen_string_literal: true

# Homebrew formula for the CODEXA standalone CLI.
class Codexa < Formula
  desc "AI-powered terminal coding agent"
  homepage "https://github.com/Aaravkhanal/CODEXA"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Aaravkhanal/CODEXA/releases/download/v0.2.8/codexa-v0.2.8-darwin-arm64.tar.gz"
      sha256 "0461310db59d17f18fb3251144a68d22bcb7aa530578af12d81271cfe5958d27"
    end
    on_intel do
      url "https://github.com/Aaravkhanal/CODEXA/releases/download/v0.2.8/codexa-v0.2.8-darwin-x64.tar.gz"
      sha256 "e8193e1cc674b354a2c6f725217191903649c95b3557c3afed113320c1475c12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Aaravkhanal/CODEXA/releases/download/v0.2.8/codexa-v0.2.8-linux-arm64.tar.gz"
      sha256 "a8e3239aa3d2dcc2c5f73dbd5ca7958a1ced87299836fdb77fd807948012d774"
    end
    on_intel do
      url "https://github.com/Aaravkhanal/CODEXA/releases/download/v0.2.8/codexa-v0.2.8-linux-x64.tar.gz"
      sha256 "a66bed13a10fa861a7a3f7862f2d75866eeb7526043f703fbe58d43b54f1a7bb"
    end
  end

  def install
    bin.install "codexa"
  end

  test do
    assert_match "codexa #{version}", shell_output("#{bin}/codexa --version")
  end
end
