# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dottie < Formula
  desc "Makes working with .env files easy"
  homepage "https://github.com/jippi/dottie"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jippi/dottie/releases/download/v0.9.2/dottie_Darwin_x86_64.tar.gz"
      sha256 "2e4c5de65f4e15e3f5637fb3a61dfd04f16db252c54367f4e8b604944fe21ec5"

      def install
        bin.install "dottie"
        bash_completion.install "completions/dottie.bash" => "dottie"
        zsh_completion.install "completions/dottie.zsh" => "_dottie"
        fish_completion.install "completions/dottie.fish"
        man1.install "manpages/dottie.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jippi/dottie/releases/download/v0.9.2/dottie_Darwin_arm64.tar.gz"
      sha256 "f2cea88220315b361fab94f652ac3816593404e7aff085142f621ed42f6bd9e8"

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
    if Hardware::CPU.intel?
      url "https://github.com/jippi/dottie/releases/download/v0.9.2/dottie_Linux_x86_64.tar.gz"
      sha256 "f967c2d101bca6f9523b9c252497ce697419f92ee342c190f8c91b3428d272b8"

      def install
        bin.install "dottie"
        bash_completion.install "completions/dottie.bash" => "dottie"
        zsh_completion.install "completions/dottie.zsh" => "_dottie"
        fish_completion.install "completions/dottie.fish"
        man1.install "manpages/dottie.1.gz"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/jippi/dottie/releases/download/v0.9.2/dottie_Linux_armv7.tar.gz"
      sha256 "33556877a76e42fce59e69faee2f3c2f9ab0905fa91bbf059efe3d04ec4faf7a"

      def install
        bin.install "dottie"
        bash_completion.install "completions/dottie.bash" => "dottie"
        zsh_completion.install "completions/dottie.zsh" => "_dottie"
        fish_completion.install "completions/dottie.fish"
        man1.install "manpages/dottie.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jippi/dottie/releases/download/v0.9.2/dottie_Linux_arm64.tar.gz"
      sha256 "56d5d5a66af4f9e47aa0dd6882a35cef3b95fb3faaf0d2ed1cd8c67d98f41950"

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
