class ZenohBridgeRos1 < Formula
  desc "Eclipse zenoh ros1 bridge"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros1/0.10.1-rc/x86_64-apple-darwin/zenoh-bridge-ros1-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "4bd847e7f287ef468e0e0e9daf7fce66fa1cd9d6febfa2ab7b1ccb208c5a3a72"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros1/0.10.1-rc/aarch64-apple-darwin/zenoh-bridge-ros1-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "9051e80c041e5258822b4b780d0f5b5822cf49a1c1184b1344da536fb85211a0"
    end
  end

  def install
    bin.install "zenoh-bridge-ros1"
  end
end
