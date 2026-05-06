class PuhutkoLite < Formula
  desc "Interactive Finnish dictionary app"
  homepage "https://github.com/phhien203/puhutko-lite"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phhien203/puhutko-lite/releases/download/v0.1.3/puhutko-lite-darwin-arm64.tar.gz"
      sha256 "70345db6f39735924972234c5c13c9aac7b5c00bd6a58cc48acfc356ba2afcad"
    end
  end

  def install
    bin.install "puhutko-lite"
  end

  test do
    output = shell_output("#{bin}/puhutko-lite --version")
    assert_match "puhutko-lite #{version}", output
  end
end
