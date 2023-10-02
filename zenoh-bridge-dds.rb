class ZenohBridgeDDS < Formula
  desc "Eclipse zenoh dds bridge"
  homepage "https://zenoh.io"
  version "0.10.0-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-dds/0.10.0-rc/x86_64-apple-darwin/zenoh-bridge-dds-0.10.0-rc-x86_64-apple-darwin.zip"
      sha256 "1fe6c5d5b115d749a3d9bedd08c18dc2d0c3d4a567c2e4635b72f037f18e4c99"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-dds/0.10.0-rc/aarch64-apple-darwin/zenoh-bridge-dds-0.10.0-rc-aarch64-apple-darwin.zip"
      sha256 "b8096809077fa3010c2dc89abf12485bbb2b3ada1450b523bc91f2a396189ebe"
    end
  end

  def install
    bin.install "zenoh-bridge-dds"
  end
end
