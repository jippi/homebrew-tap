# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ScmEngine < Formula
  desc "Makes working with .env files easy"
  homepage "https://github.com/jippi/scm-engine"
  version "0.12.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jippi/scm-engine/releases/download/v0.12.2/scm-engine_Darwin_x86_64.tar.gz"
      sha256 "0b75e1ffe7150ae98f382dbb25f09b7a0734a7628af76392558d6dbf94329886"

      def install
        bin.install "scm-engine"
      end
    end
    on_arm do
      url "https://github.com/jippi/scm-engine/releases/download/v0.12.2/scm-engine_Darwin_arm64.tar.gz"
      sha256 "d5cec1100d0102e470ee328a822801e528eae00926a74f8e257ebad5826d902e"

      def install
        bin.install "scm-engine"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jippi/scm-engine/releases/download/v0.12.2/scm-engine_Linux_x86_64.tar.gz"
        sha256 "d6a50253a3b5dfc14d2f7cb757883ebd32982426c1470416ce70d6ab4a93544f"

        def install
          bin.install "scm-engine"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/jippi/scm-engine/releases/download/v0.12.2/scm-engine_Linux_armv7.tar.gz"
        sha256 "47a73288c106adb2b7b88e56b5b873dbdf6710b49f5128fa170ea70b99922a19"

        def install
          bin.install "scm-engine"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jippi/scm-engine/releases/download/v0.12.2/scm-engine_Linux_arm64.tar.gz"
        sha256 "8979fdd0f0275e926e1405242ed6d594a8b7c0730b562e1af2a3ceb8f02718f3"

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
