# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ScmEngine < Formula
  desc "Makes working with .env files easy"
  homepage "https://github.com/jippi/scm-engine"
  version "0.10.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jippi/scm-engine/releases/download/v0.10.6/scm-engine_Darwin_x86_64.tar.gz"
      sha256 "28122bb45271858affd422def8450b6c2ce2f6437c13b03357a74557b3d978a0"

      def install
        bin.install "scm-engine"
      end
    end
    on_arm do
      url "https://github.com/jippi/scm-engine/releases/download/v0.10.6/scm-engine_Darwin_arm64.tar.gz"
      sha256 "b20ea151d915bb9d10b43a60f601fed4e80b037a4bc4658e8b9bf5dd0d3dd8b9"

      def install
        bin.install "scm-engine"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jippi/scm-engine/releases/download/v0.10.6/scm-engine_Linux_x86_64.tar.gz"
        sha256 "f6969ef81f556339a6633be4d7687b68721a19bf6d48a0e5ac15784c3ddd1f6b"

        def install
          bin.install "scm-engine"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/jippi/scm-engine/releases/download/v0.10.6/scm-engine_Linux_armv7.tar.gz"
        sha256 "23cc9e7e45aa36972a80bffeeee5bcebc6b887f7a2e643e767afa75d018e122d"

        def install
          bin.install "scm-engine"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jippi/scm-engine/releases/download/v0.10.6/scm-engine_Linux_arm64.tar.gz"
        sha256 "088fd763724b2f3d7cddfc72eb43ab8c5f4a75855952f507138323c29e97072e"

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
