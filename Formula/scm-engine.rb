# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ScmEngine < Formula
  desc "Makes working with .env files easy"
  homepage "https://github.com/jippi/scm-engine"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jippi/scm-engine/releases/download/v0.2.1/scm-engine_Darwin_x86_64.tar.gz"
      sha256 "897f2268722913ab5eadffd4b1d69eaf66b1e1ab68f759522c09a981e095dc16"

      def install
        bin.install "scm-engine"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jippi/scm-engine/releases/download/v0.2.1/scm-engine_Darwin_arm64.tar.gz"
      sha256 "036776c90327c6efb00a0e8ab51dace9efd2147bd0f740aa3dcf227e665a4ed0"

      def install
        bin.install "scm-engine"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jippi/scm-engine/releases/download/v0.2.1/scm-engine_Linux_x86_64.tar.gz"
      sha256 "d91a60544d6a4c7b1f11cd87c8f9787a85fe4137ef18c676cc7d23424949abe9"

      def install
        bin.install "scm-engine"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/jippi/scm-engine/releases/download/v0.2.1/scm-engine_Linux_armv7.tar.gz"
      sha256 "4a332f8092aea1e2f9bb3fbc53554bdcbf0a5f4ac538800c447111ccb60d9620"

      def install
        bin.install "scm-engine"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jippi/scm-engine/releases/download/v0.2.1/scm-engine_Linux_arm64.tar.gz"
      sha256 "da91f15926bc1aa6bfce1e1d80a00830c2faad84b257ba5349aab0a54196d7de"

      def install
        bin.install "scm-engine"
      end
    end
  end

  test do
    system "#{bin}/scm-engine -v"
  end
end
