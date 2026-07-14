# Homebrew formula for the filament CLI — lives in Abdk4Moura/homebrew-tap.
# Regenerated per release by packaging/release-followup.sh.
class Filament < Formula
  desc "P2P file transfer between terminals and browsers - no upload, no account"
  homepage "https://filament.autumated.com"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Abdk4Moura/filament/releases/download/cli-v0.4.2/filament-aarch64-apple-darwin.tar.gz"
      sha256 "b4f6960cd5f916b20b32dff144a70492f6900a9a779eb7d539ee09e9e7fa6756"
    else
      url "https://github.com/Abdk4Moura/filament/releases/download/cli-v0.4.2/filament-x86_64-apple-darwin.tar.gz"
      sha256 "d40ce13af2c4b0dcab561cfbf43fc20962d4ceec0004efa61d7ee8491915193d"
    end
  end

  on_linux do
    url "https://github.com/Abdk4Moura/filament/releases/download/cli-v0.4.2/filament-x86_64-unknown-linux-musl.tar.gz"
    sha256 "e316faddb1063353ea17f1ece4cde8213b61b4ed3d7b6cf291a10287c873c58c"
  end

  def install
    bin.install "filament"
    generate_completions_from_executable(bin/"filament", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/filament --version")
  end
end
