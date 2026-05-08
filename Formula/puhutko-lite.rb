class PuhutkoLite < Formula
  desc "Interactive Finnish dictionary app"
  homepage "https://github.com/phhien203/puhutko-lite"
  version "1.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phhien203/puhutko-lite/releases/download/v1.0.7/puhutko-lite-darwin-arm64.tar.gz"
      sha256 "0faa724d8e27e693807bf740d94aaeaaeda8c80feda27c4eb30daac3b7408899"
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
