class ZenohPluginRos1 < Formula
  desc "Eclipse zenoh ros1 plugin"
  homepage "https://zenoh.io"
  version "0.7.2-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros1/0.7.2-rc/x86_64-apple-darwin/zenoh-plugin-ros1-0.7.2-rc-x86_64-apple-darwin.zip"
      sha256 "7919340f4975acff9a7245588ac3ff274dfa3e515a94e13965fb4f4438c45122"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros1/0.7.2-rc/aarch64-apple-darwin/zenoh-plugin-ros1-0.7.2-rc-aarch64-apple-darwin.zip"
      sha256 "bcbdab3cd69d78fc57fd003191d19bd701941ed2c50290aa6941ffdaf22a3ef9"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_ros1.dylib"
  end
end
