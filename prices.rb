BUILD_VERSION = "0.0.15"
AMD_SHASUM_256 = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
ARM_SHASUM_256 = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

class Prices < Formula
  desc "Prices Server"
  homepage "https://github.com/anypay/prices-rs"
  url "https://github.com/anypay/prices-rs/releases/download/0.0.15/prices-0.0.15-macos-64-bit.zip"
  sha256 AMD_SHASUM_256

  # For ARM architecture
  on_arm do
    url "https://github.com/anypay/prices-rs/releases/download/0.0.15/prices-0.0.15-macos-arm.zip"
    sha256 ARM_SHASUM_256
  end

  def install
    bin.install "prices" => "prices"
  end

  test do
    system "#{bin}/prices", "--version"
  end
end
