class ZenohBridgeMqtt < Formula
  desc "Eclipse zenoh mqtt bridge"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-mqtt/0.10.1-rc/x86_64-apple-darwin/zenoh-bridge-mqtt-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "3985c5b65e5741f056e0b9ad31ec25003abfb4f8e32227c4ce30c735cbdf5c61"
    end
  end

  def install
    bin.install "zenoh-bridge-mqtt"
  end
end
