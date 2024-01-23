class ZenohPluginRos2dds < Formula
  desc "Eclipse zenoh ros2dds plugin"
  homepage "https://zenoh.io"
  version "0.10.1-rc.2"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros2dds/0.10.1-rc.2/x86_64-apple-darwin/zenoh-plugin-ros2dds-0.10.1-rc.2-x86_64-apple-darwin.zip"
      sha256 "5140d22ace45d6f5a662db4347716896e85791ed89a8cd33e6bf9d4d02c83152"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros2dds/0.10.1-rc.2/aarch64-apple-darwin/zenoh-plugin-ros2dds-0.10.1-rc.2-aarch64-apple-darwin.zip"
      sha256 "ebae47e2c98ede0cb0b6889292d769de30e317b0627760cc86b3265db2b32cc6"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_ros2dds.dylib"
  end
end
