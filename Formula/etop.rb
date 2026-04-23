class Etop < Formula
  desc "Local-only macOS TUI process viewer focused on power usage and energy impact"
  homepage "https://github.com/Mattslayga/etop"
  url "https://github.com/Mattslayga/etop/releases/download/v0.1.5/etop-v0.1.5-macos-aarch64.tar.gz"
  sha256 "a30e9b39192e137c1d2bb75c0ff2343b56cc1d57cfe1a71f6353f6deccafb179"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
  end

  def install
    bin.install "etop"
  end

  test do
    output = shell_output("#{bin}/etop --dump-once")
    assert_match(/\S+/, output)
  end
end
