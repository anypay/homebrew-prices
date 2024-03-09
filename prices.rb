BUILD_VERSION = "0.0.17"
AMD_SHASUM_256 = "6737b5bf34ff8cae8daf1f58d8c8c1253702c274c2b73e6c564411ae1867c5c7"
ARM_SHASUM_256 = "f5d09e3d4c38e52383c4e54b129cd41bd38ef4ee5b4bb53d698256a8697d4959"

class Prices < Formula
  desc "Prices Server"
  homepage "https://github.com/anypay/prices-rs"
  url "https://github.com/anypay/prices-rs/releases/download/0.0.17/prices-0.0.17-macos-64-bit.zip"
  sha256 AMD_SHASUM_256

  # For ARM architecture
  on_arm do
    url "https://github.com/anypay/prices-rs/releases/download/0.0.17/prices-0.0.17-macos-arm.zip"
    sha256 ARM_SHASUM_256
  end

  def install
    bin.install "prices" => "prices"
  end

  test do
    system "#{bin}/prices", "--version"
  end
end
