class Etop < Formula
  desc "Local-only macOS TUI process viewer focused on power usage and energy impact"
  homepage "https://github.com/Mattslayga/etop"
  url "https://github.com/Mattslayga/etop/releases/download/v0.1.3/etop-v0.1.3-macos-aarch64.tar.gz"
  sha256 "eefefaeabe1ea72688aeb4f64245f8506cb4e019656740ac771d9b95c9f9f0e6"
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
