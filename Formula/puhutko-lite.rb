class PuhutkoLite < Formula
  desc "Interactive Finnish dictionary app"
  homepage "https://github.com/phhien203/puhutko-lite"
  version "1.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phhien203/puhutko-lite/releases/download/v1.6.0/puhutko-lite-darwin-arm64.tar.gz"
      sha256 "b7d17413f18d17ad74623311e83057d0183b2452fa2ecda6add6ba9b0af17953"
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
