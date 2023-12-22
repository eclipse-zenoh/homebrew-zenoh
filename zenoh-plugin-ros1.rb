class ZenohPluginRos1 < Formula
  desc "Eclipse zenoh ros1 plugin"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros1/0.10.1-rc/x86_64-apple-darwin/zenoh-plugin-ros1-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "9ef942b45c1909c88363d722ddf6004b669ea14f838035430fadf4b8fa6a0812"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros1/0.10.1-rc/aarch64-apple-darwin/zenoh-plugin-ros1-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "01f629fd88db15e38a1dd075b36e9e4f998099b4de54288a47c25c5413fa261b"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_ros1.dylib"
  end
end
