# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dottie < Formula
  desc "Makes working with .env files easy"
  homepage "https://github.com/jippi/dottie"
  version "0.6.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jippi/dottie/releases/download/v0.6.8/dottie_Darwin_arm64.tar.gz"
      sha256 "5703aa4bbd3cd570b4b98e32cd9b57fd2a56e7d1a69a2e92f13919ca34269654"

      def install
        bin.install "dottie"
        bash_completion.install "completions/dottie.bash" => "dottie"
        zsh_completion.install "completions/dottie.zsh" => "_dottie"
        fish_completion.install "completions/dottie.fish"
        man1.install "manpages/dottie.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jippi/dottie/releases/download/v0.6.8/dottie_Darwin_x86_64.tar.gz"
      sha256 "de1e89ea1a0cf6786959018fff1695df3abfcd58b99b2a2fbedf5b714abcc9e1"

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
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/jippi/dottie/releases/download/v0.6.8/dottie_Linux_armv7.tar.gz"
      sha256 "fc585849ea5e09a9b9103ebd821f2311c878454e2411316d758c0848a266970b"

      def install
        bin.install "dottie"
        bash_completion.install "completions/dottie.bash" => "dottie"
        zsh_completion.install "completions/dottie.zsh" => "_dottie"
        fish_completion.install "completions/dottie.fish"
        man1.install "manpages/dottie.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jippi/dottie/releases/download/v0.6.8/dottie_Linux_x86_64.tar.gz"
      sha256 "4e0ea979030b78a6fbe0763120680482e1524415957602987d522c2c0092b792"

      def install
        bin.install "dottie"
        bash_completion.install "completions/dottie.bash" => "dottie"
        zsh_completion.install "completions/dottie.zsh" => "_dottie"
        fish_completion.install "completions/dottie.fish"
        man1.install "manpages/dottie.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jippi/dottie/releases/download/v0.6.8/dottie_Linux_arm64.tar.gz"
      sha256 "112935db7f4ad406a3149077b150b140aaef736088355575296c96a8311cc468"

      def install
        bin.install "dottie"
        bash_completion.install "completions/dottie.bash" => "dottie"
        zsh_completion.install "completions/dottie.zsh" => "_dottie"
        fish_completion.install "completions/dottie.fish"
        man1.install "manpages/dottie.1.gz"
      end
    end
  end

  test do
    system "#{bin}/dottie -v"
  end
end
