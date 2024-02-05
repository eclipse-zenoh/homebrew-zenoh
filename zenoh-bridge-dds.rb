class ZenohBridgeDds < Formula
  desc "Eclipse zenoh dds bridge"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-dds/0.10.1-rc/x86_64-apple-darwin/zenoh-bridge-dds-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "30d33f7c5d3122d3a4c990b2024fcf9fc1768d6c932196fd11e16f090504545c"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-dds/0.10.1-rc/aarch64-apple-darwin/zenoh-bridge-dds-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "d447315980d608ddeb8cd8092ce66e9d583bd8ca722d7cd41d930b3907967c31"
    end
  end

  def install
    bin.install "zenoh-bridge-dds"
  end
end
