class ZenohBridgeDDS < Formula
  desc "Eclipse zenoh dds bridge"
  homepage "https://zenoh.io"
  version "0.7.2-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-dds/0.7.2-rc/x86_64-apple-darwin/zenoh-bridge-dds-0.7.2-rc-x86_64-apple-darwin.zip"
      sha256 "54272bac61df0fa47845f0b8a4f8f1ab3f9ab854ba4454eb6a734ba7e768cdaf"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-dds/0.7.2-rc/aarch64-apple-darwin/zenoh-bridge-dds-0.7.2-rc-aarch64-apple-darwin.zip"
      sha256 "dcf36e0ea617f1a2aa6c182621c7393fee296ce2d491c0e7a02010d29f26667a"
    end
  end

  def install
    bin.install "zenoh-bridge-dds"
  end
end
