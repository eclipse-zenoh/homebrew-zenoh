class ZenohBridgeMqtt < Formula
  desc "Eclipse zenoh mqtt bridge"
  homepage "https://zenoh.io"
  version "0.10.0-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-mqtt/0.10.0-rc/x86_64-apple-darwin/zenoh-bridge-mqtt-0.10.0-rc-x86_64-apple-darwin.zip"
      sha256 "ef175235863b594db22e2b38ad397d965d7f1dc6506e91d11d6612c7f000b382"
    end
  end

  def install
    bin.install "zenoh-bridge-mqtt"
  end
end
