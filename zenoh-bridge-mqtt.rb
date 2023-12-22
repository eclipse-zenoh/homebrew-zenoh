class ZenohBridgeMqtt < Formula
  desc "Eclipse zenoh mqtt bridge"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-mqtt/0.10.1-rc/x86_64-apple-darwin/zenoh-bridge-mqtt-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "1cbf24ff816c435f7465c6bedcc10020e7d3727bed541d8ef6a145f0160efa34"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-mqtt/0.10.1-rc/aarch64-apple-darwin/zenoh-bridge-mqtt-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "c13701992502615ea4372e57b17194d3dd76a65aab2a9f7729cbb1f48818e40c"
    end
  end

  def install
    bin.install "zenoh-bridge-mqtt"
  end
end
