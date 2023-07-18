class ZenohBridgeMqtt < Formula
  desc "Eclipse zenoh mqtt bridge"
  homepage "https://zenoh.io"
  version "0.7.2-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-mqtt/0.7.2-rc/x86_64-apple-darwin/zenoh-bridge-mqtt-0.7.2-rc-x86_64-apple-darwin.zip"
      sha256 "1b10c976f069e701ea419b0b2e4bc2362f55967aa5fcba35df7d7becba8532e9"
    end
  end

  def install
    bin.install "zenoh-bridge-mqtt"
  end
end
