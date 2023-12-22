class ZenohBridgeDds < Formula
  desc "Eclipse zenoh dds bridge"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-dds/0.10.1-rc/x86_64-apple-darwin/zenoh-bridge-dds-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "6ebf5b693042eef2519c58b6380d95ed615db44d87cb14ab5a7e955e1550def7"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-dds/0.10.1-rc/aarch64-apple-darwin/zenoh-bridge-dds-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "1ddaf2ed7c6205a0ae4b3eadda3be8561c870ea4c53cabb18bcb3f9a4061e350"
    end
  end

  def install
    bin.install "zenoh-bridge-dds"
  end
end
