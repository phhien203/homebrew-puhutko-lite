class PuhutkoLite < Formula
  desc "Interactive Finnish dictionary app"
  homepage "https://github.com/phhien203/puhutko-lite"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/phhien203/puhutko-lite/releases/download/v1.0.4/puhutko-lite-darwin-arm64.tar.gz"
      sha256 "d70075dc7d913cdb6cf4f748ebcdf1d85e37207c88e8f6d2d2ccaff4e7ab63cd"
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
