class Etop < Formula
  desc "Local-only macOS TUI process viewer focused on power usage and energy impact"
  homepage "https://github.com/Mattslayga/etop"
  url "https://github.com/Mattslayga/etop/releases/download/v0.1.1/etop-v0.1.1-macos-aarch64.tar.gz"
  sha256 "98060932d5a473d4ae5978c3d34bbbab8a6fcb3f4cda86602aea1a4c8fd613fc"
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
