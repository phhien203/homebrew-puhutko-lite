class PuhutkoLite < Formula
  desc "Interactive Finnish dictionary app"
  homepage "https://github.com/phhien203/puhutko-lite"
  version "1.1.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phhien203/puhutko-lite/releases/download/v1.1.8/puhutko-lite-darwin-arm64.tar.gz"
      sha256 "30eec4031d54b6720099c4dead8275c279fb3714cbb095cfe1967b30d3387578"
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
