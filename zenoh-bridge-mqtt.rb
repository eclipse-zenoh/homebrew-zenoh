require "json"

class ZenohBridgeMqtt < Formula
  release = JSON.parse(File.read("#{__dir__}/release.json"))[File.basename(__FILE__, ".rb")]

  desc "Eclipse zenoh mqtt bridge"
  homepage "https://zenoh.io"

  arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"
  url release["#{arch}-url"]
  sha256 release["#{arch}-sha256"]

  depends_on :macos

  def install
    bin.install "zenoh-bridge-mqtt"
  end

  test do
    system bin/"zenoh-bridge-mqtt", "--version"
  end
end
