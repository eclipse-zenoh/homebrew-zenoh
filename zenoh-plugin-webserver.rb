class ZenohPluginWebserver < Formula
  desc "Eclipse zenoh webserver plugin"
  homepage "https://zenoh.io"
  version "0.10.1-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-webserver/0.10.1-rc/x86_64-apple-darwin/zenoh-plugin-webserver-0.10.1-rc-x86_64-apple-darwin.zip"
      sha256 "eb42fb38703e7e53386a286f7b60f09f98325ef756e7cbec041f4c49877c5748"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-webserver/0.10.1-rc/aarch64-apple-darwin/zenoh-plugin-webserver-0.10.1-rc-aarch64-apple-darwin.zip"
      sha256 "6e5f2fed07a447ae4ee7eb68f75f3de396f42b32d13dd2c3f23f1d936436797a"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_webserver.dylib"
  end
end
