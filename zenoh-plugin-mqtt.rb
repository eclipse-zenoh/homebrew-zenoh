class ZenohPluginMqtt < Formula
  desc "Eclipse zenoh mqtt plugin"
  homepage "https://zenoh.io"
  version "0.10.0-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-mqtt/0.10.0-rc/x86_64-apple-darwin/zenoh-plugin-mqtt-0.10.0-rc-x86_64-apple-darwin.zip"
      sha256 "4a634c0af08abf575f8de469bae95625f58cc52e9ab27d9ed7f303ea486918d7"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_mqtt.dylib"
  end
end
