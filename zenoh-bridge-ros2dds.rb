require "json"

class ZenohBridgeRos2dds < Formula
  release = JSON.parse(File.read("#{__dir__}/release.json"))[File.basename(__FILE__, ".rb")]

  desc "Eclipse zenoh ros2dds bridge"
  homepage "https://zenoh.io"

  on_macos do
    on_intel do
      url release["x86_64-url"]
      sha256 release["x86_64-sha256"]
    end
    on_arm do
      url release["aarch64-url"]
      sha256 release["aarch64-sha256"]
    end
  end

  def install
    bin.install "zenoh-bridge-ros2dds"
  end
end
