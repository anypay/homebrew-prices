BUILD_VERSION = "0.0.15"
AMD_SHASUM_256 = "3a1feb84b7bf5f1c89d5da08a15135cd7416e59c0c5c252b48ee18d03f37db0c"
ARM_SHASUM_256 = "c8b47302775dac77312e64e9c9c6698f0f58aa51243ff6d8e5ebacee2bef6f5a"

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
