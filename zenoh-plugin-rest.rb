class ZenohPluginRest < Formula
  desc "Eclipse zenoh http plugin (geo-distributed pub/sub/query/storage of data)"
  homepage "https://zenoh.io"
  version "0.7.2-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh/0.7.2-rc/x86_64-apple-darwin/zenoh-0.7.2-rc-x86_64-apple-darwin.zip"
      sha256 "0146f7d41459f7e16696ec17005e4e9ded4496f747707b9f8520e9a59b92ef59"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh/0.7.2-rc/aarch64-apple-darwin/zenoh-0.7.2-rc-aarch64-apple-darwin.zip"
      sha256 "f6d169d57ff3e585cf4988dfb0479464f4fdb1241370b39b441d6bb71f660538"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_rest.dylib"
  end
end
