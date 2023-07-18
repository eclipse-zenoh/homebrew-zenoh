class ZenohPluginWebserver < Formula
  desc "Eclipse zenoh webserver plugin"
  homepage "https://zenoh.io"
  version "0.7.2-rc"

  on_macos do
    on_intel do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-webserver/0.7.2-rc/x86_64-apple-darwin/zenoh-plugin-webserver-0.7.2-rc-x86_64-apple-darwin.zip"
      sha256 "b87d955ee54fba6cc4096ada4a96a2ed97cb5e6f5ef6ea76c6c2f001f3b987c5"
    end
    on_arm do
      url "https://download.eclipse.org/zenoh/zenoh-plugin-webserver/0.7.2-rc/aarch64-apple-darwin/zenoh-plugin-webserver-0.7.2-rc-aarch64-apple-darwin.zip"
      sha256 "0eb06ab6416fb3bda9e802210535e81a20dfc83143dc13c57a42908b8d3e035d"
    end
  end

  depends_on "zenohd"

  def install
    lib.install "libzenoh_plugin_webserver.dylib"
  end
end
