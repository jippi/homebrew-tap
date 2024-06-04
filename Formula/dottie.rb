# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dottie < Formula
  desc "Makes working with .env files easy"
  homepage "https://github.com/jippi/dottie"
  version "0.13.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jippi/dottie/releases/download/v0.13.1/dottie_Darwin_x86_64.tar.gz"
      sha256 "fb2452e9c53c6ae902883dcb53569848e9593dcb411293b749e2ba4464f73b9f"

      def install
        bin.install "dottie"
        bash_completion.install "completions/dottie.bash" => "dottie"
        zsh_completion.install "completions/dottie.zsh" => "_dottie"
        fish_completion.install "completions/dottie.fish"
        man1.install "manpages/dottie.1.gz"
      end
    end
    on_arm do
      url "https://github.com/jippi/dottie/releases/download/v0.13.1/dottie_Darwin_arm64.tar.gz"
      sha256 "e9f7539e8ddfbdd8521d1fe95aaf407dec11fd3a13a60e75a5c6d5ab8b45098b"

      def install
        bin.install "dottie"
        bash_completion.install "completions/dottie.bash" => "dottie"
        zsh_completion.install "completions/dottie.zsh" => "_dottie"
        fish_completion.install "completions/dottie.fish"
        man1.install "manpages/dottie.1.gz"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jippi/dottie/releases/download/v0.13.1/dottie_Linux_x86_64.tar.gz"
        sha256 "0a4092c78b6ba72ee5c9f2fc3c1582ef60c930b0a98121b6a571a0b88e98ca0e"

        def install
          bin.install "dottie"
          bash_completion.install "completions/dottie.bash" => "dottie"
          zsh_completion.install "completions/dottie.zsh" => "_dottie"
          fish_completion.install "completions/dottie.fish"
          man1.install "manpages/dottie.1.gz"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/jippi/dottie/releases/download/v0.13.1/dottie_Linux_armv7.tar.gz"
        sha256 "681ce5828f13d0b9679866865122f87dd60b03eff5a3655f10b15182d8738421"

        def install
          bin.install "dottie"
          bash_completion.install "completions/dottie.bash" => "dottie"
          zsh_completion.install "completions/dottie.zsh" => "_dottie"
          fish_completion.install "completions/dottie.fish"
          man1.install "manpages/dottie.1.gz"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jippi/dottie/releases/download/v0.13.1/dottie_Linux_arm64.tar.gz"
        sha256 "760e41cad798e14ae664e37f2033a73dc0ad3c65e6bb7dca2ccc1e5f4dc69162"

        def install
          bin.install "dottie"
          bash_completion.install "completions/dottie.bash" => "dottie"
          zsh_completion.install "completions/dottie.zsh" => "_dottie"
          fish_completion.install "completions/dottie.fish"
          man1.install "manpages/dottie.1.gz"
        end
      end
    end
  end

  test do
    system "#{bin}/dottie -v"
  end
end
