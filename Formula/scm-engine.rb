# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ScmEngine < Formula
  desc "Makes working with .env files easy"
  homepage "https://github.com/jippi/scm-engine"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jippi/scm-engine/releases/download/v0.16.1/scm-engine_Darwin_x86_64.tar.gz"
      sha256 "a6f99c5701dde667f56635dc3e6a22eaa4745cad3a0b62ed0300e27569ddabff"

      def install
        bin.install "scm-engine"
      end
    end
    on_arm do
      url "https://github.com/jippi/scm-engine/releases/download/v0.16.1/scm-engine_Darwin_arm64.tar.gz"
      sha256 "1f7fffae1eb8a95c5185a1eff02d105af18c0f2c5f27472ec4020d2597ddcc4f"

      def install
        bin.install "scm-engine"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jippi/scm-engine/releases/download/v0.16.1/scm-engine_Linux_x86_64.tar.gz"
        sha256 "c610657cc001f98baf6c398b487d4903e280034040a2d559b1ff81b38c1835c2"

        def install
          bin.install "scm-engine"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/jippi/scm-engine/releases/download/v0.16.1/scm-engine_Linux_armv7.tar.gz"
        sha256 "85eee5d6712e3acd17397c5d6c22476889bf065f4168268f9db6bb98d15bf1ba"

        def install
          bin.install "scm-engine"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jippi/scm-engine/releases/download/v0.16.1/scm-engine_Linux_arm64.tar.gz"
        sha256 "81a92e224e0a2289aa88dddf64c0ff444a0ee5a7b79e64ab8f02f3fecb8fa134"

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
