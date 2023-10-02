class ZenohPluginDDS < Formula
  desc "Eclipse zenoh dds plugin"
  homepage "https://zenoh.io"
  version "0.10.0-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-dds/0.10.0-rc/x86_64-apple-darwin/zenoh-plugin-dds-0.10.0-rc-x86_64-apple-darwin.zip"
      sha256 "2aa95ffb13ff6522397b94513f2d99eeec746b897aa67600e657e9a72f5a0f53"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-dds/0.10.0-rc/aarch64-apple-darwin/zenoh-plugin-dds-0.10.0-rc-aarch64-apple-darwin.zip"
      sha256 "449d529734111e7035f1409d971c396a6c416799207a797f15234177afe89d69"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_dds.dylib"
  end
end
