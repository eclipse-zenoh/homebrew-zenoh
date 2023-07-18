class ZenohBridgeRos1 < Formula
  desc "Eclipse zenoh ros1 bridge"
  homepage "https://zenoh.io"
  version "0.7.2-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros1/0.7.2-rc/x86_64-apple-darwin/zenoh-bridge-ros1-0.7.2-rc-x86_64-apple-darwin.zip"
      sha256 "89f681b99c931eb924ae5bb875bcc27e791975cc4fba96f7cefd86268870d0a9"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros1/0.7.2-rc/aarch64-apple-darwin/zenoh-bridge-ros1-0.7.2-rc-aarch64-apple-darwin.zip"
      sha256 "9cb9e1ff0c9bb6174ab79258f9ae853ebfb98e4a57be22f9734286df7a7d9c37"
    end
  end

  def install
    bin.install "zenoh-bridge-ros1"
  end
end
