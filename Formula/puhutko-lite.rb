class PuhutkoLite < Formula
  desc "Interactive Finnish dictionary app"
  homepage "https://github.com/phhien203/puhutko-lite"
  version "1.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phhien203/puhutko-lite/releases/download/v1.0.5/puhutko-lite-darwin-arm64.tar.gz"
      sha256 "f5c4fe4c96a3e7f22923438ba22c6f5d1b1dbf63824fdc6816b437a23743a2ad"
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
