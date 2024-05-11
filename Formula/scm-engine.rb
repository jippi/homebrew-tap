# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ScmEngine < Formula
  desc "Makes working with .env files easy"
  homepage "https://github.com/jippi/scm-engine"
  version "0.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jippi/scm-engine/releases/download/v0.7.3/scm-engine_Darwin_x86_64.tar.gz"
      sha256 "963eea03d9a5e9a265c82b7560550cc2e1133fbac95146647feeebb30d5a9bab"

      def install
        bin.install "scm-engine"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jippi/scm-engine/releases/download/v0.7.3/scm-engine_Darwin_arm64.tar.gz"
      sha256 "43cf78e0394cab5cc007be85f1c2c740a4623f99ddb740ee3afd25922a248b63"

      def install
        bin.install "scm-engine"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jippi/scm-engine/releases/download/v0.7.3/scm-engine_Linux_x86_64.tar.gz"
      sha256 "cfe204c965659e4ec6733ed01b14b1169893e04f715869cd67b79b4725c7f10b"

      def install
        bin.install "scm-engine"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/jippi/scm-engine/releases/download/v0.7.3/scm-engine_Linux_armv7.tar.gz"
      sha256 "ed515c605ba467c84a9702150ed8956719490a4b0ee502b59b57abc136219cea"

      def install
        bin.install "scm-engine"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jippi/scm-engine/releases/download/v0.7.3/scm-engine_Linux_arm64.tar.gz"
      sha256 "04562e90aaf45ee5227e85dcde24ffaa282f37723112682dd7cdae4ffd9393d2"

      def install
        bin.install "scm-engine"
      end
    end
  end

  test do
    system "#{bin}/scm-engine -v"
  end
end
