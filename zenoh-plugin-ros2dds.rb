class ZenohPluginRos2Dds < Formula
  desc "Eclipse zenoh ros2dds plugin"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros2dds/0.10.1-rc/x86_64-apple-darwin/zenoh-plugin-ros2dds-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "55f623376ef7e5a5239486d0598d2e25eec2835f5c68ca8698174e08ea82379f"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros2dds/0.10.1-rc/aarch64-apple-darwin/zenoh-plugin-ros2dds-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "ccee52e4784fa6a2fd604f032ad1942b6813e60cb6f4561781afaddc3379be21"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_ros2dds.dylib"
  end
end
