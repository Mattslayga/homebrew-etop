class Etop < Formula
  desc "Local-only macOS TUI process viewer focused on power usage and energy impact"
  homepage "https://github.com/Mattslayga/etop"
  url "https://github.com/Mattslayga/etop/releases/download/v0.1.7/etop-v0.1.7-macos-arm64.tar.gz"
  version "0.1.7"
  sha256 "65f009c4aee1b9dd8eedd9ce27662425a1ca21b9fc20693c655d6e47b1a89dfc"
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
