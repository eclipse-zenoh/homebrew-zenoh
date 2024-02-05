class ZenohBridgeMqtt < Formula
  desc "Eclipse zenoh mqtt bridge"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-mqtt/0.10.1-rc/x86_64-apple-darwin/zenoh-bridge-mqtt-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "dd366c1fbcdd53268153a6a09e9ec10cecb2700120a971e8eb4edd19a81cdc89"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-mqtt/0.10.1-rc/aarch64-apple-darwin/zenoh-bridge-mqtt-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "5e15a0d9f4ab4ade5e88b56af3e4bc3c49000f6678b460bd9902a4f17f046bd7"
    end
  end

  def install
    bin.install "zenoh-bridge-mqtt"
  end
end
