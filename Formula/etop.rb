class Etop < Formula
  desc "Local-only macOS TUI process viewer focused on power usage and energy impact"
  homepage "https://github.com/Mattslayga/etop"
  url "https://github.com/Mattslayga/etop/releases/download/v0.1.6/etop-v0.1.6-macos-arm64.tar.gz"
  version "0.1.6"
  sha256 "d56476f733e7f69f581c33aadce8b60d62487127703e8a7a42ac83c72225b5c8"
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
