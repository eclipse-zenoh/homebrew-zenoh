class ZenohPluginMqtt < Formula
  desc "Eclipse zenoh mqtt plugin"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-mqtt/0.10.1-rc/x86_64-apple-darwin/zenoh-plugin-mqtt-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "7aaf33f6f83301a96353b13e3c5afd274f2f2eaac41fb87d67f5d5539efa7823"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_mqtt.dylib"
  end
end
