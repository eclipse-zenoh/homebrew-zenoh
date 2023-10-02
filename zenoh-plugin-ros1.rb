class ZenohPluginRos1 < Formula
  desc "Eclipse zenoh ros1 plugin"
  homepage "https://zenoh.io"
  version "0.10.0-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros1/0.10.0-rc/x86_64-apple-darwin/zenoh-plugin-ros1-0.10.0-rc-x86_64-apple-darwin.zip"
      sha256 "7c01ec3ecc22bd073a95c11a1029bd14ff244f6f0d811eacb76afdc212f5236e"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-ros1/0.10.0-rc/aarch64-apple-darwin/zenoh-plugin-ros1-0.10.0-rc-aarch64-apple-darwin.zip"
      sha256 "d9f884f9e002a73d627312ea366384f76ac181669c4fef2a8be545d6d22782c9"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_ros1.dylib"
  end
end
