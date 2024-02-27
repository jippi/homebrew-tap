# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dottie < Formula
  desc "Makes working with .env files easy"
  homepage "https://github.com/jippi/dottie"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jippi/dottie/releases/download/v0.10.1/dottie_Darwin_arm64.tar.gz"
      sha256 "079aab9422fe44d866b142abe863342eb5cddcccce7fdeb40b362074ede28b60"

      def install
        bin.install "dottie"
        bash_completion.install "completions/dottie.bash" => "dottie"
        zsh_completion.install "completions/dottie.zsh" => "_dottie"
        fish_completion.install "completions/dottie.fish"
        man1.install "manpages/dottie.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jippi/dottie/releases/download/v0.10.1/dottie_Darwin_x86_64.tar.gz"
      sha256 "55cb0ca6c76389d851df9f5646ad1a7ca494b8f4515835e31b66b4acae7fba45"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jippi/dottie/releases/download/v0.10.1/dottie_Linux_arm64.tar.gz"
      sha256 "821117b5064a706649b7dbced413411f0b0a83f412f50730f6d3c9cebd2f660d"

      def install
        bin.install "dottie"
        bash_completion.install "completions/dottie.bash" => "dottie"
        zsh_completion.install "completions/dottie.zsh" => "_dottie"
        fish_completion.install "completions/dottie.fish"
        man1.install "manpages/dottie.1.gz"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/jippi/dottie/releases/download/v0.10.1/dottie_Linux_armv7.tar.gz"
      sha256 "618a082b1d8d06c2616770075323affd6d4181905b773f4bff5e3d66dee61f4e"

      def install
        bin.install "dottie"
        bash_completion.install "completions/dottie.bash" => "dottie"
        zsh_completion.install "completions/dottie.zsh" => "_dottie"
        fish_completion.install "completions/dottie.fish"
        man1.install "manpages/dottie.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jippi/dottie/releases/download/v0.10.1/dottie_Linux_x86_64.tar.gz"
      sha256 "ef0e4a6a44e311a97b5d67f4777295f5feac11c2c099e020c4e2999bc52c38f1"

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
