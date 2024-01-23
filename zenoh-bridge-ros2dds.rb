class ZenohBridgeRos2dds < Formula
  desc "Eclipse zenoh ros2dds bridge"
  homepage "https://zenoh.io"
  version "0.10.1-rc.2"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros2dds/0.10.1-rc.2/x86_64-apple-darwin/zenoh-bridge-ros2dds-0.10.1-rc.2-x86_64-apple-darwin.zip"
      sha256 "c58ea2d64175e1cde3b0231c651521f6e395ea80ed82533a03b7c09d9001e20a"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros2dds/0.10.1-rc.2/aarch64-apple-darwin/zenoh-bridge-ros2dds-0.10.1-rc.2-aarch64-apple-darwin.zip"
      sha256 "ba6e207310e32d2d7f97fcb51e00670898b60ed41b268ec9a2448f838b839402"
    end
  end

  def install
    bin.install "zenoh-bridge-ros2dds"
  end
end
