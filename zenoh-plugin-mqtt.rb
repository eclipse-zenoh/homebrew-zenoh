class ZenohPluginMqtt < Formula
  desc "Eclipse zenoh mqtt plugin"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-mqtt/0.10.1-rc/x86_64-apple-darwin/zenoh-plugin-mqtt-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "21841e8779c6eaba433f50e41e8ce3145399d8a67268680c1e1e4ddfcfd3c1cb"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-mqtt/0.10.1-rc/aarch64-apple-darwin/zenoh-plugin-mqtt-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "c1e2c9ddef5d5b352c360cb15d5e2486481bac3f865a47b0e0e551a89b4589e5"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_mqtt.dylib"
  end
end
