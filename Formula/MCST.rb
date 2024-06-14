# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mcst < Formula
  desc "A command-line utility making Minecraft server creation quick and easy for beginners."
  homepage "https://github.com/Arama0517/MCServerTool"
  version "1.2.0-SNAPSHOT-e616d8a"
  license "GPL-v3"

  depends_on "aria2"

  on_macos do
    on_intel do
      url "https://github.com/Arama-Vanarana/MCServerTool/releases/download/v1.2.0/MCServerTool_Darwin_x86_64.tar.gz"
      sha256 "bc9831362590dd89b587c769c3c44a862535ecd16c862a743fc6ba91343c4550"

      def install
        bin.install "MCST"
        bash_completion.install "completions/MCST.bash" => "MCST"
        zsh_completion.install "completions/MCST.zsh" => "_MCST"
        fish_completion.install "completions/MCST.fish"
        man1.install "manpages/MCST.1.gz"
      end
    end
    on_arm do
      url "https://github.com/Arama-Vanarana/MCServerTool/releases/download/v1.2.0/MCServerTool_Darwin_arm64.tar.gz"
      sha256 "0126c32a0ff19c341ca13f4c11808f42ed588dccab60ffcc521fe42dcf31adf9"

      def install
        bin.install "MCST"
        bash_completion.install "completions/MCST.bash" => "MCST"
        zsh_completion.install "completions/MCST.zsh" => "_MCST"
        fish_completion.install "completions/MCST.fish"
        man1.install "manpages/MCST.1.gz"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Arama-Vanarana/MCServerTool/releases/download/v1.2.0/MCServerTool_Linux_x86_64.tar.gz"
        sha256 "bd0d9bc3e2c9955444a3c8edb9f101948bafdcb0b1722fe8ba8456cd971fdade"

        def install
          bin.install "MCST"
          bash_completion.install "completions/MCST.bash" => "MCST"
          zsh_completion.install "completions/MCST.zsh" => "_MCST"
          fish_completion.install "completions/MCST.fish"
          man1.install "manpages/MCST.1.gz"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/Arama-Vanarana/MCServerTool/releases/download/v1.2.0/MCServerTool_Linux_armv7.tar.gz"
        sha256 "fff996dc9a187dc5924964e14e029f681d084e8b51713fd5321a12ea25973d47"

        def install
          bin.install "MCST"
          bash_completion.install "completions/MCST.bash" => "MCST"
          zsh_completion.install "completions/MCST.zsh" => "_MCST"
          fish_completion.install "completions/MCST.fish"
          man1.install "manpages/MCST.1.gz"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Arama-Vanarana/MCServerTool/releases/download/v1.2.0/MCServerTool_Linux_arm64.tar.gz"
        sha256 "93152038300d2fd9efe57989cb4ebb06b10af7da63d36d686969027f84440f30"

        def install
          bin.install "MCST"
          bash_completion.install "completions/MCST.bash" => "MCST"
          zsh_completion.install "completions/MCST.zsh" => "_MCST"
          fish_completion.install "completions/MCST.fish"
          man1.install "manpages/MCST.1.gz"
        end
      end
    end
  end

  test do
    system "#{bin}/MCST -v"
  end
end
