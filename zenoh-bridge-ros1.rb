class ZenohBridgeRos1 < Formula
  desc "Eclipse zenoh ros1 bridge"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros1/0.10.1-rc/x86_64-apple-darwin/zenoh-bridge-ros1-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "ef9260648a918d24c47ddf82e548bd151a2c2df1704fa8b3385b36d8f7532df7"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros1/0.10.1-rc/aarch64-apple-darwin/zenoh-bridge-ros1-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "9572b177f1220ebdbc60141d716f50df67f05a13c2e8c25ebd9affa89ab10c66"
    end
  end

  def install
    bin.install "zenoh-bridge-ros1"
  end
end
