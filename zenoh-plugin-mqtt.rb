class ZenohPluginMqtt < Formula
  desc "Eclipse zenoh mqtt plugin"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-mqtt/0.10.1-rc/x86_64-apple-darwin/zenoh-plugin-mqtt-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "3fe65c751767e4672da81c1bb0abd7210cf2af54fd1f4ffb5ff99001e40373aa"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-mqtt/0.10.1-rc/aarch64-apple-darwin/zenoh-plugin-mqtt-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "28a813446e12fc6f4526277f5aa8cd47d40940508fd269028b2c804521473482"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_mqtt.dylib"
  end
end
