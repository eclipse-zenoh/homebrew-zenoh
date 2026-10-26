require "json"

class ZenohBridgeRos1 < Formula
  release = JSON.parse(File.read("#{__dir__}/release.json"))[File.basename(__FILE__, ".rb")]

  desc "Eclipse zenoh ros1 bridge"
  homepage "https://zenoh.io"

  arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"
  url release["#{arch}-url"]
  sha256 release["#{arch}-sha256"]

  depends_on :macos

  def install
    bin.install "zenoh-bridge-ros1"
  end

  test do
    system bin/"zenoh-bridge-ros1", "--version"
  end
end
