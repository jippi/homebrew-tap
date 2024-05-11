# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ScmEngine < Formula
  desc "Makes working with .env files easy"
  homepage "https://github.com/jippi/scm-engine"
  version "0.7.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jippi/scm-engine/releases/download/v0.7.5/scm-engine_Darwin_x86_64.tar.gz"
      sha256 "2d118b06444a93f85e21716db64df3e4b02e123ac9cbab1558f3c2b7bf0a6ace"

      def install
        bin.install "scm-engine"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jippi/scm-engine/releases/download/v0.7.5/scm-engine_Darwin_arm64.tar.gz"
      sha256 "db918ec3e9c99653f4d37d727f85d72655fcb220a45dacceee99e12a4ad62d96"

      def install
        bin.install "scm-engine"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jippi/scm-engine/releases/download/v0.7.5/scm-engine_Linux_x86_64.tar.gz"
      sha256 "d375fff594cbec9a590ced98e06f7f403fb892667f55f2a9e423e7f9e63204b3"

      def install
        bin.install "scm-engine"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/jippi/scm-engine/releases/download/v0.7.5/scm-engine_Linux_armv7.tar.gz"
      sha256 "ba98b7caf8438c3b587b641bf2a9f576a027996097afac0e03a3b1b1236ed86c"

      def install
        bin.install "scm-engine"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jippi/scm-engine/releases/download/v0.7.5/scm-engine_Linux_arm64.tar.gz"
      sha256 "c21f582ed5d47bfb081a6f76e6c0a3cf419db2c33b82364306c17e1c060df966"

      def install
        bin.install "scm-engine"
      end
    end
  end

  test do
    system "#{bin}/scm-engine -v"
  end
end
