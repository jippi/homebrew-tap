# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ScmEngine < Formula
  desc "Makes working with .env files easy"
  homepage "https://github.com/jippi/scm-engine"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jippi/scm-engine/releases/download/v0.10.0/scm-engine_Darwin_x86_64.tar.gz"
      sha256 "f7a207dd39d9c9442ae8c7a9bbfd97c3ebd72efbe468c1b9c8a790dda89ee256"

      def install
        bin.install "scm-engine"
      end
    end
    on_arm do
      url "https://github.com/jippi/scm-engine/releases/download/v0.10.0/scm-engine_Darwin_arm64.tar.gz"
      sha256 "12983ce5060a192bc75ba545d101d9bd83c6fde7d828258dd2aa39722a29d2c9"

      def install
        bin.install "scm-engine"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jippi/scm-engine/releases/download/v0.10.0/scm-engine_Linux_x86_64.tar.gz"
        sha256 "9f0bd2fcc27b611463a960cd0bd6d1f976446ab75b56fb6e3b22303e8bd8273d"

        def install
          bin.install "scm-engine"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/jippi/scm-engine/releases/download/v0.10.0/scm-engine_Linux_armv7.tar.gz"
        sha256 "e09f0d79b1fd38a235b7849fccac5ca060970cd9e9569e0463ffd9add36d9897"

        def install
          bin.install "scm-engine"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jippi/scm-engine/releases/download/v0.10.0/scm-engine_Linux_arm64.tar.gz"
        sha256 "40f948afb6886998f969fff1164e2d0a4adb1b156f3a0f2ec356f02521d6f2d1"

        def install
          bin.install "scm-engine"
        end
      end
    end
  end

  test do
    system "#{bin}/scm-engine -v"
  end
end
