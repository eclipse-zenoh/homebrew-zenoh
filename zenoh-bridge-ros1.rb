class ZenohBridgeRos1 < Formula
  desc "Eclipse zenoh ros1 bridge"
  homepage "https://zenoh.io"
  version "0.10.0-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros1/0.10.0-rc/x86_64-apple-darwin/zenoh-bridge-ros1-0.10.0-rc-x86_64-apple-darwin.zip"
      sha256 "99d1345960426273459dd42fb785559b4fc84cae60cd7f544029df48658ad6a5"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros1/0.10.0-rc/aarch64-apple-darwin/zenoh-bridge-ros1-0.10.0-rc-aarch64-apple-darwin.zip"
      sha256 "e322da06c4b4cdbf582c12162a88ed15c35db2a18d576374429fab15b8eb4e40"
    end
  end

  def install
    bin.install "zenoh-bridge-ros1"
  end
end
