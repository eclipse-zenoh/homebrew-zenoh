class ZenohPluginMqtt < Formula
  desc "Eclipse zenoh mqtt plugin"
  homepage "https://zenoh.io"
  version "0.7.2-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-mqtt/0.7.2-rc/x86_64-apple-darwin/zenoh-plugin-mqtt-0.7.2-rc-x86_64-apple-darwin.zip"
      sha256 "c3a0f9d0b865108ee83bcf2d1445de1a0c1d32feb9c2c82f0b0ac2ed352cf31b"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_mqtt.dylib"
  end
end
