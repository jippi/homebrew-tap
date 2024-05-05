# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ScmEngine < Formula
  desc "Makes working with .env files easy"
  homepage "https://github.com/jippi/scm-engine"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jippi/scm-engine/releases/download/v0.0.1/scm-engine_Darwin_x86_64.tar.gz"
      sha256 "99dc0e628f6fe53c502dcaac8f8f8d2059f28940a2a169f3c30616ad99633111"

      def install
        bin.install "scm-engine"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jippi/scm-engine/releases/download/v0.0.1/scm-engine_Darwin_arm64.tar.gz"
      sha256 "494ad99b6a3f1441a7dffd8d968cb7897719024dd93b98fe9a84cecd6e48cfd5"

      def install
        bin.install "scm-engine"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jippi/scm-engine/releases/download/v0.0.1/scm-engine_Linux_x86_64.tar.gz"
      sha256 "bdd3f04c047e1b2bc5195089bf63c06aef9f1b4c48028e25030deb21db197f10"

      def install
        bin.install "scm-engine"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/jippi/scm-engine/releases/download/v0.0.1/scm-engine_Linux_armv7.tar.gz"
      sha256 "c014fc9e47eee4d84cd88b122caf3cb695c71c04ba929381837e2a6e9124a6cf"

      def install
        bin.install "scm-engine"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jippi/scm-engine/releases/download/v0.0.1/scm-engine_Linux_arm64.tar.gz"
      sha256 "bd98b188be4409690c774aa1b0e86c7107d9c9a6a9c631adf9b1ab85ac194ca8"

      def install
        bin.install "scm-engine"
      end
    end
  end

  test do
    system "#{bin}/scm-engine -v"
  end
end
