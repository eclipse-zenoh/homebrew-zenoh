class ZenohBridgeRos2Dds < Formula
  desc "Eclipse zenoh ros2dds bridge"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros2dds/0.10.1-rc/x86_64-apple-darwin/zenoh-bridge-ros2dds-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "ddb5158786387cb8d8344c85893625865c3c2f13243750cf982cca87e479d451"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros2dds/0.10.1-rc/aarch64-apple-darwin/zenoh-bridge-ros2dds-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "1dedc2e483e8478ca6ec2a349121f4b6103ef43ae6ccde66f03fc7af41e9cf63"
    end
  end

  def install
    bin.install "zenoh-bridge-ros2dds"
  end
end
