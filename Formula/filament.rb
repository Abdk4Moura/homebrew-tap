# Homebrew formula for the filament CLI — lives in Abdk4Moura/homebrew-tap.
# Regenerated per release by packaging/release-followup.sh.
class Filament < Formula
  desc "P2P file transfer between terminals and browsers - no upload, no account"
  homepage "https://filament.autumated.com"
  version "0.2.1-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Abdk4Moura/filament/releases/download/cli-v0.2.1-beta.11/filament-aarch64-apple-darwin.tar.gz"
      sha256 "b8bb6d51cc4bba116440bce4a56eb51a92b06eab4dac83e01f6c7f43d5227b33"
    else
      url "https://github.com/Abdk4Moura/filament/releases/download/cli-v0.2.1-beta.11/filament-x86_64-apple-darwin.tar.gz"
      sha256 "c7733d3502d89b259b527a2bcab9ccb6abb19151506136173408ab131b69aff3"
    end
  end

  on_linux do
    url "https://github.com/Abdk4Moura/filament/releases/download/cli-v0.2.1-beta.11/filament-x86_64-unknown-linux-musl.tar.gz"
    sha256 "83ff0899560dda85265e7ae3092f1f9622665e1e0150b38a5c9a884a46b05e12"
  end

  def install
    bin.install "filament"
    generate_completions_from_executable(bin/"filament", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/filament --version")
  end
end
