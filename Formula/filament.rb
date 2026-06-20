# Homebrew formula for the filament CLI — lives in Abdk4Moura/homebrew-tap.
# Regenerated per release by packaging/release-followup.sh.
class Filament < Formula
  desc "P2P file transfer between terminals and browsers - no upload, no account"
  homepage "https://filament.autumated.com"
  version "0.2.1-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Abdk4Moura/filament/releases/download/cli-v0.2.1-beta.7/filament-aarch64-apple-darwin.tar.gz"
      sha256 "94b1ae01a7ad654b2b0f5e6842c07b613f909951e79c8f412e0d1e9150897a14"
    else
      url "https://github.com/Abdk4Moura/filament/releases/download/cli-v0.2.1-beta.7/filament-x86_64-apple-darwin.tar.gz"
      sha256 "1101b65de10e69e26c290176210d30bb68da26e4072ca13f18ea68036ad439c7"
    end
  end

  on_linux do
    url "https://github.com/Abdk4Moura/filament/releases/download/cli-v0.2.1-beta.7/filament-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a4cd15a9ea4fd29d9aee81ba9a3955d778f05cf5786e53e7cb647b38bab733e0"
  end

  def install
    bin.install "filament"
    generate_completions_from_executable(bin/"filament", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/filament --version")
  end
end
