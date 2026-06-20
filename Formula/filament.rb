# Homebrew formula for the filament CLI — lives in Abdk4Moura/homebrew-tap.
# Regenerated per release by packaging/release-followup.sh.
class Filament < Formula
  desc "P2P file transfer between terminals and browsers - no upload, no account"
  homepage "https://filament.autumated.com"
  version "0.2.1-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Abdk4Moura/filament/releases/download/cli-v0.2.1-beta.8/filament-aarch64-apple-darwin.tar.gz"
      sha256 "278eb157c9567ec65ac9344472e4e41c7149f6e9ed9b9c6171860b9753a76ae5"
    else
      url "https://github.com/Abdk4Moura/filament/releases/download/cli-v0.2.1-beta.8/filament-x86_64-apple-darwin.tar.gz"
      sha256 "ab74910c49e6a19618fb45ae0c720ae8baf9a60d2e6ee59097bd3625a34c2e4f"
    end
  end

  on_linux do
    url "https://github.com/Abdk4Moura/filament/releases/download/cli-v0.2.1-beta.8/filament-x86_64-unknown-linux-musl.tar.gz"
    sha256 "1c9ed4f63b50d8c6924570da4c6d9e31999bc98f408987040f4f855af00463f8"
  end

  def install
    bin.install "filament"
    generate_completions_from_executable(bin/"filament", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/filament --version")
  end
end
