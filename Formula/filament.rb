# Homebrew formula for the filament CLI — lives in Abdk4Moura/homebrew-tap.
# Regenerated per release by packaging/release-followup.sh.
class Filament < Formula
  desc "P2P file transfer between terminals and browsers - no upload, no account"
  homepage "https://filament.autumated.com"
  version "0.2.1-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Abdk4Moura/filament/releases/download/cli-v0.2.1-beta.9/filament-aarch64-apple-darwin.tar.gz"
      sha256 "403d08ec3458f90ef0c7f886bec07db6cbcdf9f6b50a9cf0931169ff15710e88"
    else
      url "https://github.com/Abdk4Moura/filament/releases/download/cli-v0.2.1-beta.9/filament-x86_64-apple-darwin.tar.gz"
      sha256 "0755b49a19aa30cce0c686ff11d63fca8db10534273ff4e8a3abac337743d65d"
    end
  end

  on_linux do
    url "https://github.com/Abdk4Moura/filament/releases/download/cli-v0.2.1-beta.9/filament-x86_64-unknown-linux-musl.tar.gz"
    sha256 "62cd00d57ad112568713393f3975c264d6df99fbf07e1648b88f3248e1a35b98"
  end

  def install
    bin.install "filament"
    generate_completions_from_executable(bin/"filament", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/filament --version")
  end
end
