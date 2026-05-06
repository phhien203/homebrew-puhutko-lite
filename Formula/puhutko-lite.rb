class PuhutkoLite < Formula
  desc "Interactive Finnish dictionary app"
  homepage "https://github.com/phhien203/puhutko-lite"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phhien203/puhutko-lite/releases/download/v0.1.2/puhutko-lite-darwin-arm64.tar.gz"
      sha256 "d61883347b29767bc5af994ec0c5aa0cf123dcc1ad14ae4684d79eef21068383"
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
