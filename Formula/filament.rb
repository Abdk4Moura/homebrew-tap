# Homebrew formula for the filament CLI — lives in Abdk4Moura/homebrew-tap.
# Regenerated per release by packaging/release-followup.sh.
class Filament < Formula
  desc "P2P file transfer between terminals and browsers - no upload, no account"
  homepage "https://filament.autumated.com"
  version "0.2.1-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Abdk4Moura/filament/releases/download/cli-v0.2.1-beta.10/filament-aarch64-apple-darwin.tar.gz"
      sha256 "8dda85b3ca377c60ff1ab671f21770ec5947a6973a4c36de6446828a246d111c"
    else
      url "https://github.com/Abdk4Moura/filament/releases/download/cli-v0.2.1-beta.10/filament-x86_64-apple-darwin.tar.gz"
      sha256 "82fceebaddd6ba695b5765ce55821e902cbc41b443e156ab23f77451ad4fa5d8"
    end
  end

  on_linux do
    url "https://github.com/Abdk4Moura/filament/releases/download/cli-v0.2.1-beta.10/filament-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a8f42c837f708d2fa913b0f9ef9d437bba9aed3c04e546a3c924ae7c87d2d682"
  end

  def install
    bin.install "filament"
    generate_completions_from_executable(bin/"filament", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/filament --version")
  end
end
